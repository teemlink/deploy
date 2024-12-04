CREATE DATABASE IF NOT EXISTS obpm5 DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci; 
use obpm5; 
/*
Navicat MySQL Data Transfer

Source Server         : 192.168.80.200
Source Server Version : 50716
Source Host           : 192.168.80.200:3307
Source Database       : obpm5

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2023-11-22 17:29:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `ID` varchar(255) NOT NULL,
  `LOGINNO` varchar(255) DEFAULT NULL,
  `LOGINPWD` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(255) DEFAULT NULL,
  `TELEPHONE2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('o8P0irhWXGA2oZ5t', 'admin1', 'd29a286fe5ae4ff45dce9378375ba79e5009742dc7ee9ecf', 'admin1@teemlink.com', null, null);
INSERT INTO `t_account` VALUES ('WqCXk2eI5BroiKLNz4n', 'zhangsan', 'ac58ff43c43a447ab9b8e0d0ce4a5a9c5b49e461e7dc0811', null, null, null);

-- ----------------------------
-- Table structure for t_calendar
-- ----------------------------
DROP TABLE IF EXISTS `t_calendar`;
CREATE TABLE `t_calendar` (
  `ID` varchar(255) NOT NULL,
  `CALENDARTYPE` varchar(255) DEFAULT NULL,
  `CALENDARNAME` varchar(255) DEFAULT NULL,
  `LASTMODIFYDATE` datetime DEFAULT NULL,
  `SORTID` varchar(255) DEFAULT NULL,
  `DOMAINID` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `WORKINGTIME` int(11) DEFAULT NULL,
  `FROMCALENDARID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_calendar
-- ----------------------------
INSERT INTO `t_calendar` VALUES ('Bj1dOzumfPeka4gL7K1', 'Eight_TimeZone', '夜班日历', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', 'core.workcalendar.night.calendarinfo', '8', null);
INSERT INTO `t_calendar` VALUES ('gEvtCLFnEILUE5RmWTH', 'Eight_TimeZone', '24小时日历', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', 'core.workcalendar.24.calendarinfo', '24', null);
INSERT INTO `t_calendar` VALUES ('rQjAiiWFZgsx47OJ7JW', 'Eight_TimeZone', '标准日历', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', 'core.workcalendar.standard.calendarinfo', '8', null);

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SUPERIOR` varchar(255) DEFAULT NULL,
  `DOMAIN_ID` varchar(255) DEFAULT NULL,
  `LEVELS` int(11) DEFAULT NULL,
  `INDEXCODE` varchar(1000) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `SORTID` varchar(255) DEFAULT NULL,
  `VALID` int(11) DEFAULT '1',
  `ORDERBYNO` int(11) DEFAULT '10000',
  `WEIXIN_DEPT_ID` varchar(255) DEFAULT NULL,
  `LANXIN_DEPT_ID` varchar(255) DEFAULT NULL,
  `FIELD1` varchar(255) DEFAULT NULL,
  `FIELD2` varchar(255) DEFAULT NULL,
  `FIELD3` varchar(255) DEFAULT NULL,
  `FIELD4` varchar(255) DEFAULT NULL,
  `FIELD5` varchar(255) DEFAULT NULL,
  `FIELD6` varchar(255) DEFAULT NULL,
  `FIELD7` varchar(255) DEFAULT NULL,
  `FIELD8` varchar(255) DEFAULT NULL,
  `FIELD9` varchar(255) DEFAULT NULL,
  `FIELD10` varchar(255) DEFAULT NULL,
  `DINGDING_DEPT_ID` varchar(255) DEFAULT NULL,
  `LASTMODIFYTIME` datetime(6) DEFAULT NULL,
  `FIELD11` varchar(255) DEFAULT NULL,
  `FIELD12` varchar(255) DEFAULT NULL,
  `FIELD13` varchar(255) DEFAULT NULL,
  `FIELD14` varchar(255) DEFAULT NULL,
  `FIELD15` varchar(255) DEFAULT NULL,
  `FIELD16` varchar(255) DEFAULT NULL,
  `FIELD17` longtext,
  `FIELD18` longtext,
  `FIELD19` longtext,
  `FIELD20` longtext,
  `FS_DEPT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK16A0C81D66C7842` (`DOMAIN_ID`) USING BTREE,
  KEY `FK16A0C81DF21BF5BD` (`SUPERIOR`) USING BTREE,
  KEY `index_ORDERBYNO` (`ORDERBYNO`) USING BTREE,
  CONSTRAINT `FK16A0C81D66C7842` FOREIGN KEY (`DOMAIN_ID`) REFERENCES `t_domain` (`ID`),
  CONSTRAINT `FK16A0C81DF21BF5BD` FOREIGN KEY (`SUPERIOR`) REFERENCES `t_department` (`ID`),
  CONSTRAINT `FKbcc5wye8i4vdb6wj7pojlclqj` FOREIGN KEY (`SUPERIOR`) REFERENCES `t_department` (`ID`),
  CONSTRAINT `FKtoe32rcaxqeqaep7rirky2cw9` FOREIGN KEY (`DOMAIN_ID`) REFERENCES `t_domain` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('Z42xU8LmniRouZ93E7s', '总部', null, '3CffNlgt9B9StIjIUPB', '0', '5fbaLCe8DIbIP2BdQoc_Z42xU8LmniRouZ93E7s', '1', null, '1', '0', '1', null, '', '', '', '', '', '', '', '', '', '', null, null, '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `t_department` VALUES ('__7AR6G1T02Nb55labPkr', '技术部', 'Z42xU8LmniRouZ93E7s', '3CffNlgt9B9StIjIUPB', '1', '5fbaLCe8DIbIP2BdQoc_Z42xU8LmniRouZ93E7s___7AR6G1T02Nb55labPkr', null, '161277275760400000', '1', '0', null, null, '', '', '', '', '', '', '', '', '', '', null, null, '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `t_department` VALUES ('__BbX5GmUz8om72ICA781', '后勤部', 'Z42xU8LmniRouZ93E7s', '3CffNlgt9B9StIjIUPB', '1', '5fbaLCe8DIbIP2BdQoc_Z42xU8LmniRouZ93E7s___BbX5GmUz8om72ICA781', null, '161277277176200000', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_department` VALUES ('__bZiGACxcLs4FH8O8eTt', '销售部', 'Z42xU8LmniRouZ93E7s', '3CffNlgt9B9StIjIUPB', '1', '5fbaLCe8DIbIP2BdQoc_Z42xU8LmniRouZ93E7s___bZiGACxcLs4FH8O8eTt', null, '161277273863900000', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_department` VALUES ('__lBTr7YmXnkH1RaqPLlz', '市场部', 'Z42xU8LmniRouZ93E7s', '3CffNlgt9B9StIjIUPB', '1', '5fbaLCe8DIbIP2BdQoc_Z42xU8LmniRouZ93E7s___lBTr7YmXnkH1RaqPLlz', null, '161277275187500000', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_domain
-- ----------------------------
DROP TABLE IF EXISTS `t_domain`;
CREATE TABLE `t_domain` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SORTID` varchar(255) DEFAULT NULL,
  `SKINTYPE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` text,
  `STATUS` int(11) DEFAULT NULL,
  `SMSMEMBERCODE` varchar(255) DEFAULT NULL,
  `SMSMEMBERPWD` varchar(255) DEFAULT NULL,
  `IS_LOG` bit(1) DEFAULT NULL,
  `SYSTEM_NAME` varchar(255) DEFAULT NULL,
  `LOGO_URL` varchar(255) DEFAULT NULL,
  `WEIXIN_CORP_ID` varchar(255) DEFAULT NULL,
  `WEIXIN_CORP_SECRET` varchar(255) DEFAULT NULL,
  `WEIXIN_AGENT_ID` varchar(255) DEFAULT NULL,
  `WEIXIN_PROXY_TYPE` varchar(255) DEFAULT NULL,
  `SERVER_HOST` varchar(255) DEFAULT NULL,
  `WEIXIN_TOKEN` varchar(255) DEFAULT NULL,
  `WEIXIN_ENCODING_AESKEY` varchar(255) DEFAULT NULL,
  `SYSTEM_MODULE_CONFIG` text,
  `BIND_APPLICATIONS` varchar(1000) DEFAULT NULL,
  `WEIXIN_CONFIG` text,
  `SEND_HOST` varchar(255) DEFAULT NULL,
  `SEND_ADDRESS` varchar(255) DEFAULT NULL,
  `SEND_ACCOUNT` varchar(255) DEFAULT NULL,
  `SEND_PASSWORD` varchar(255) DEFAULT NULL,
  `CC_ADDRESS` varchar(255) DEFAULT NULL,
  `ISUSE_CLIENT` varchar(255) DEFAULT NULL,
  `FUNCTION_DOMAIN` varchar(255) DEFAULT NULL,
  `TRASH` varchar(255) DEFAULT NULL,
  `SENDER` varchar(255) DEFAULT NULL,
  `DRAFT` varchar(255) DEFAULT NULL,
  `REMOVED` varchar(255) DEFAULT NULL,
  `FETCH_SERVER` varchar(255) DEFAULT NULL,
  `FETCH_SERVER_PORT` varchar(255) DEFAULT NULL,
  `FETCH_PROTOCOL` varchar(255) DEFAULT NULL,
  `FETCH_SSL` varchar(255) DEFAULT NULL,
  `SMTP_SERVER` varchar(255) DEFAULT NULL,
  `SMTP_SERVER_PORT` varchar(255) DEFAULT NULL,
  `SMTP_AUTH_ENTICATED` varchar(255) DEFAULT NULL,
  `SMTP_SSL` varchar(255) DEFAULT NULL,
  `WEIXIN_QRCODE_AGENTID` varchar(255) DEFAULT NULL,
  `WEIXIN_QRCODE_SECRET` varchar(255) DEFAULT NULL,
  `WEIXIN_QRCODE_CALLBACKURL` varchar(255) DEFAULT NULL,
  `DINGDING_QRCODE_APPID` varchar(255) DEFAULT NULL,
  `DINGDING_QRCODE_APPSECRET` varchar(255) DEFAULT NULL,
  `DINGDING_QRCODE_CALLBACKURL` varchar(255) DEFAULT NULL,
  `DINGDING_PROXY_TYPE` varchar(255) DEFAULT NULL,
  `DINGDING_CORP_ID` varchar(255) DEFAULT NULL,
  `DINGDING_APP_SECRET` varchar(255) DEFAULT NULL,
  `DINGDING_APP_KEY` varchar(255) DEFAULT NULL,
  `DINGDING_AGENT_ID` varchar(255) DEFAULT NULL,
  `DINGDING_SERVER_HOST` varchar(255) DEFAULT NULL,
  `DINGDING_TOKEN` varchar(255) DEFAULT NULL,
  `DINGDING_CONFIG` longtext,
  `PARENTS` varchar(255) DEFAULT NULL,
  `FIELD1` varchar(255) DEFAULT NULL,
  `FIELD2` varchar(255) DEFAULT NULL,
  `FIELD3` varchar(255) DEFAULT NULL,
  `FIELD4` varchar(255) DEFAULT NULL,
  `FIELD5` varchar(255) DEFAULT NULL,
  `FIELD6` varchar(255) DEFAULT NULL,
  `FIELD7` varchar(255) DEFAULT NULL,
  `FIELD8` longtext,
  `FIELD9` longtext,
  `FIELD10` longtext,
  `FIELD11` varchar(255) DEFAULT NULL,
  `FIELD12` varchar(255) DEFAULT NULL,
  `FIELD13` varchar(255) DEFAULT NULL,
  `FIELD14` varchar(255) DEFAULT NULL,
  `FIELD15` varchar(255) DEFAULT NULL,
  `FIELD16` varchar(255) DEFAULT NULL,
  `FIELD17` varchar(255) DEFAULT NULL,
  `FIELD18` longtext,
  `FIELD19` longtext,
  `FIELD20` longtext,
  `SECRET` varchar(255) DEFAULT NULL,
  `YUNACCOUNT` varchar(255) DEFAULT NULL,
  `YUNPASSWORD` varchar(255) DEFAULT NULL,
  `FS_PROXY_TYPE` varchar(255) DEFAULT NULL,
  `FS_CORP_ID` varchar(255) DEFAULT NULL,
  `FS_APP_SECRET` varchar(255) DEFAULT NULL,
  `FS_APP_KEY` varchar(255) DEFAULT NULL,
  `FS_SERVER_HOST` varchar(255) DEFAULT NULL,
  `FS_TOKEN` varchar(255) DEFAULT NULL,
  `FS_CONFIG` longtext,
  `ABBREVIATION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_domain
-- ----------------------------
INSERT INTO `t_domain` VALUES ('3CffNlgt9B9StIjIUPB', '我的公司', null, 'vue', '我的公司', '1', 'sam_hr', '123456', '', '', '', 'ww4862e4c6416306be', '0SAub-YPjKrBuCUjFtBMOh1sPaiFLrkS28oVP-ZbeMU', '0', 'EnterpriseWeChat', 'http://office.teemlink.com:65533/obpm', null, '', '[{\"enable\":true,\"id\":\"flowCenter\"}]', '[\"__JVEhjq5aTh0000bPTzG\",\"KMAPPID\",\"__TcboMScMPR4UuIbksem\",\"__l7pzNG6dR2wuVJ1kOGV\",\"__WDQckT4CctFs1wYLyjw\",\"__hDwZZTLdvTMp871Uf3J\",\"__UbhLdp8HGyFlh6eBXdA\",\"__M4oRwEVzSB1oI1D0faN\",\"__dBmwJZB993phCTn0Dcy\",\"__UoAHNa8EQ7QUy0ALBP1\",\"__UUHBKu40PKDsaMp2z5j\",\"__tPXpyLBPUPmF6kZsyff\",\"__rzuvXrZBA0FLQe8om6r\",\"__XelBa3DfXZSIOazulYu\",\"__oSe9zTuxzwAYiuvt2Tg\"]', '{\"weixinAgentId\":{\"HdPeBqYwJyFyjHkhZu3\":\"1000009\",\"pm\":\"1000010\"},\"weixinSecret\":{\"HdPeBqYwJyFyjHkhZu3\":\"Ya8Ioa-qGJTEs506n0jLNZR1KrofzjyQLEgVRXBZTt8\",\"pm\":\"lp8pG6M_yb-YbjbJi45XssdvkYQ_G0omJkrHsp5ua4Y\"}}', 'smtp.exmail.qq.com', 'nicole@teemlink.com', 'nicole@teemlink.com', 'MyWAdC2ThUJoJgZa', '', 'true', 'teemlink.com', 'Junk E-mail', 'Sent Items', 'Drafts', 'removed', 'imap.exmail.qq.com', '993', 'imap', 'false', 'smtp.exmail.qq.com', '465', 'true', 'false', null, null, null, null, null, null, null, null, null, null, null, null, null, '{\"dingdingAgentId\":null,\"dingdingAppKey\":null,\"dingdingAppSecret\":null}', null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, '{\"feishuAgentId\":null,\"feishuAppKey\":null,\"feishuAppSecret\":null}', null);

-- ----------------------------
-- Table structure for t_field_extends
-- ----------------------------
DROP TABLE IF EXISTS `t_field_extends`;
CREATE TABLE `t_field_extends` (
  `ID` varchar(255) NOT NULL,
  `FOR_TABLE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `IS_NULL` bit(1) DEFAULT NULL,
  `ENABEL` bit(1) DEFAULT NULL,
  `SORT_NUMBER` int(11) DEFAULT NULL,
  `DOMAINID` varchar(255) DEFAULT NULL,
  `IS_NOT_NULL` bit(1) DEFAULT NULL,
  `OPTIONS` varchar(255) DEFAULT NULL,
  `IS_READ_ONLY` bit(1) DEFAULT NULL,
  `IS_SUPPORT_SEARCH` bit(1) DEFAULT NULL,
  `IS_SUPPORT_IMPORT` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_field_extends
-- ----------------------------

-- ----------------------------
-- Table structure for t_htmlhistory
-- ----------------------------
DROP TABLE IF EXISTS `t_htmlhistory`;
CREATE TABLE `t_htmlhistory` (
  `ID` varchar(255) NOT NULL,
  `DocumentID` varchar(50) DEFAULT NULL,
  `SignatureID` varchar(50) DEFAULT NULL,
  `SignatureName` varchar(50) DEFAULT NULL,
  `SignatureUnit` varchar(50) DEFAULT NULL,
  `SignatureUser` varchar(50) DEFAULT NULL,
  `KeySN` varchar(50) DEFAULT NULL,
  `SignatureSN` varchar(200) DEFAULT NULL,
  `SignatureGUID` varchar(50) DEFAULT NULL,
  `IP` varchar(50) DEFAULT NULL,
  `LogType` varchar(255) DEFAULT NULL,
  `LogTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_htmlhistory
-- ----------------------------

-- ----------------------------
-- Table structure for t_htmlsignature
-- ----------------------------
DROP TABLE IF EXISTS `t_htmlsignature`;
CREATE TABLE `t_htmlsignature` (
  `SignatureID` varchar(255) NOT NULL,
  `DocumentID` varchar(254) DEFAULT NULL,
  `FormID` varchar(254) DEFAULT NULL,
  `Signature` text,
  PRIMARY KEY (`SignatureID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_htmlsignature
-- ----------------------------

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `APPLICATIONID` varchar(255) DEFAULT NULL,
  `MODULEID` varchar(255) DEFAULT NULL,
  `ACTIONCONTENT` varchar(2000) DEFAULT NULL,
  `QUERYSTRING` text,
  `DIRECTORY` varchar(255) DEFAULT NULL,
  `SORTID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_link
-- ----------------------------

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `ID` varchar(255) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `OPERATOR` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `APPLICATIONID` varchar(255) DEFAULT NULL,
  `DOMAINID` varchar(255) DEFAULT NULL,
  `LOGDATE` datetime DEFAULT NULL,
  `SORTID` varchar(255) DEFAULT NULL,
  `LOGRES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK4CC0CB97093493B` (`USER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('051FCQHfaRlmbl3Y5di', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:01:04', null, '成功');
INSERT INTO `t_log` VALUES ('0b0G5hdjiYjBWOg4b6C', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:58:28', null, '成功');
INSERT INTO `t_log` VALUES ('0cLqXINNCJQpfiZotxG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.28.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 00:46:15', '170009557453500000', '成功');
INSERT INTO `t_log` VALUES ('0cvnlw1uuKudOGgRGpu', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为ZBaF40YRsBH9uG5optd--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:31:59', null, '成功');
INSERT INTO `t_log` VALUES ('0j42fLnlVyC6Ku3Wfow', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购及运费付款单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:41:41', null, '成功');
INSERT INTO `t_log` VALUES ('0J5tmnxlbYljTeIIzNC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目类型\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:18:33', null, '成功');
INSERT INTO `t_log` VALUES ('0lUIKvQJqggxWa5KdSS', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:43:53', null, '成功');
INSERT INTO `t_log` VALUES ('0m3wC0OMZpZZmdvsJFz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购及运费付款单\"，记录ID为MiC1SBevXGFfWmYnzOF--__FhQok2yflsbWA9JCQt0的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:43:53', null, '成功');
INSERT INTO `t_log` VALUES ('0mOG3kGntnIqXWJcSUP', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商分类\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:41:57', null, '成功');
INSERT INTO `t_log` VALUES ('0ncjaWOJmv09Dz9C7L1', 'Ai6hllhNjS2ull9TKGb', 'admin(Admin)', '添加软件失败', '添加软件', '172.24.0.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 10:28:39', null, '失败');
INSERT INTO `t_log` VALUES ('0neXcy5gPDGcYfIr9sA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:14:37', null, '成功');
INSERT INTO `t_log` VALUES ('0QfUFxMAdS7jFa1HKIR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:12:43', null, '成功');
INSERT INTO `t_log` VALUES ('0QFv0Pf8IC2s6YMGgtF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为zLKbdYT5Gb50HFNw2dz--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:27:30', null, '成功');
INSERT INTO `t_log` VALUES ('0qlyOOeZUVwA4WwHea8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款单\"，记录ID为bWudvL0lnG6wQxmZiPf--__OA4RH8BeqL1bxI71F2W的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:07:23', null, '成功');
INSERT INTO `t_log` VALUES ('0XHyGAgHrEwaszul0Ni', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:32:37', null, '成功');
INSERT INTO `t_log` VALUES ('0zDoYhn4D9rBdQGcUQi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:45:35', null, '成功');
INSERT INTO `t_log` VALUES ('12de00EBuWRucjZMvr6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为WcXynZDMKDwqfIffO6O--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:49:13', null, '成功');
INSERT INTO `t_log` VALUES ('13dd0YU11tSus7fU7Tk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为d85qQ6PWVktt2Gpede6--__4uRrLT7T87sJmdbRinQ的表单上进行了确认完成操作', '确认完成', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:16:35', null, '成功');
INSERT INTO `t_log` VALUES ('1C8Zm5OH3CdpqOEzZrN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"运费单\"，记录ID为nBcA3OTeIWKRB8MAWEo--__93TAIe21Ql6s0bH47eu的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:32:19', null, '成功');
INSERT INTO `t_log` VALUES ('1ChBVtAjD9jSMKWxXzb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:14:31', null, '成功');
INSERT INTO `t_log` VALUES ('1FNhm5YL6Fs6pyMvqA8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"，记录ID为O3nDmqVkNJrjmuO2P6X--__uYjtVG9ickEm1AEFnob的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:26', null, '成功');
INSERT INTO `t_log` VALUES ('1Gpoe6pwgru4C0rIHCo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为E7Bsu0zlb9XmbRkRBlS--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:46', null, '成功');
INSERT INTO `t_log` VALUES ('1GVDnzAAfarsTuPtN1z', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:14:45', null, '成功');
INSERT INTO `t_log` VALUES ('1HLnVAmeu2pQ5mthhlt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:43:26', null, '成功');
INSERT INTO `t_log` VALUES ('1ijgUohSUrbnjgvEqWw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:15:52', '170013335200900000', '成功');
INSERT INTO `t_log` VALUES ('1kUoBj9gpRXl6697iRI', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）在admin1（系统管理员）的界面进行了保存操作', '更新用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:52:10', null, '成功');
INSERT INTO `t_log` VALUES ('1lD5G8ANa1HbIUwatZL', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:56', null, '成功');
INSERT INTO `t_log` VALUES ('1M2KqlCuBG4nqmit4lc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:06:40', null, '成功');
INSERT INTO `t_log` VALUES ('1R5pPNJTPN4ImEu1cg5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:02:33', null, '成功');
INSERT INTO `t_log` VALUES ('1SN6gCCOiLp4VqbJgSN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:59:43', null, '成功');
INSERT INTO `t_log` VALUES ('1tf2qJSAkkuaOKUozNX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为YrdZIc525ZBz8ySQ2CN--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:46:33', null, '成功');
INSERT INTO `t_log` VALUES ('1zhS1Ntl95JuKR3u2yB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为mGVmVsfR2qhu6NFyl41--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:03:24', null, '成功');
INSERT INTO `t_log` VALUES ('20vmg4c8lUUmrGH2YDG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为GzC0uCHl0CF1QoygM3s--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:46:45', null, '成功');
INSERT INTO `t_log` VALUES ('21v0UGl8Bl7OpgCSq7K', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购退货表\"的视图上进行了新增操作', '新增', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:44:03', null, '成功');
INSERT INTO `t_log` VALUES ('23lHjHmu9gqljl6dj4t', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:36:19', null, '成功');
INSERT INTO `t_log` VALUES ('265RZjGEoHNk37NvZUa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"运费单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:32:20', null, '成功');
INSERT INTO `t_log` VALUES ('2AkUHe18X5d0hgRX4h7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库试题\"的视图上进行了新建试题操作', '新建试题', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:56', null, '成功');
INSERT INTO `t_log` VALUES ('2C5SUVCFhQuidsgGGA5', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 04:17:45', null, '成功');
INSERT INTO `t_log` VALUES ('2CTAz78P0iOKFmnV87i', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:54:04', null, '成功');
INSERT INTO `t_log` VALUES ('2DIJERudlAqttxhgEzL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:14:49', null, '成功');
INSERT INTO `t_log` VALUES ('2E5Uu5AjMz1lgdIU48r', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为E7Bsu0zlb9XmbRkRBlS--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:59:33', null, '成功');
INSERT INTO `t_log` VALUES ('2Eo8XMwpi5ZyWF74OMC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"报销明细\"的视图上进行了新建操作', '新建', '192.168.32.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 02:02:29', null, '成功');
INSERT INTO `t_log` VALUES ('2fNUQBW81CMKpWNn2uD', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:10:32', null, '成功');
INSERT INTO `t_log` VALUES ('2GyUS1925FbfvtDonn7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:51:37', null, '成功');
INSERT INTO `t_log` VALUES ('2hNsNDR2WORzh3rpxNx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为h4moGfkVcCMyl9ZrF81--__g9yXfu7GqVPgW3ZOkeB的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:52:33', null, '成功');
INSERT INTO `t_log` VALUES ('2i1Aon9OuiRu6PXEYJ8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:47:16', null, '成功');
INSERT INTO `t_log` VALUES ('2I8wYqYuxBdvjoQzTRZ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:52:28', null, '成功');
INSERT INTO `t_log` VALUES ('2iz1HezXFM5B1PxgAXc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"报销明细\"的视图上进行了新建操作', '新建', '192.168.32.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 02:01:51', null, '成功');
INSERT INTO `t_log` VALUES ('2Jy0VbaNTKppPKJOpBT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UM8BxD7WcJlKw5f53hi--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:41:13', null, '成功');
INSERT INTO `t_log` VALUES ('2KYpkfKbrqjMzaUJ8c0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为RtPPXMu0S4us394FL16--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:50:09', null, '成功');
INSERT INTO `t_log` VALUES ('2MjVJ41WSQ0pb51j2FJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:49:15', null, '成功');
INSERT INTO `t_log` VALUES ('2nDS7Izl3ErA5GFJGHK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为JaQFEsQYa8qk8d3ARHj--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:15:31', null, '成功');
INSERT INTO `t_log` VALUES ('2QeP8NkKKT1kR8qMEwM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:45:12', null, '成功');
INSERT INTO `t_log` VALUES ('2tl5exfKPPTQFSpgS6R', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为moiKo5l24DlrkBugmLr--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:34:21', null, '成功');
INSERT INTO `t_log` VALUES ('2ts6NnoKq73nJp5Q4lN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为guY8qVa6rTOtbkWRbhw--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:56:56', null, '成功');
INSERT INTO `t_log` VALUES ('2UFvIarXFIyFSTamfr9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:18:46', null, '成功');
INSERT INTO `t_log` VALUES ('2uK3SWE02ZejUlXS35o', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:02:02', null, '成功');
INSERT INTO `t_log` VALUES ('2VHB2i80135xlwJNHyd', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购及运费付款单\"，记录ID为MiC1SBevXGFfWmYnzOF--__FhQok2yflsbWA9JCQt0的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:44:00', null, '成功');
INSERT INTO `t_log` VALUES ('2ykdDXguocsjubIeZ2Z', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:27:26', null, '成功');
INSERT INTO `t_log` VALUES ('2ZiZtyuwhL8ki1TUwS2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:43', null, '成功');
INSERT INTO `t_log` VALUES ('2Zp8LSAyhWhEPfeAavn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:44:13', null, '成功');
INSERT INTO `t_log` VALUES ('2zwcfYRXB9eXU7gi4lw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:48:45', null, '成功');
INSERT INTO `t_log` VALUES ('33DFQJKcMOsS7t7T8ua', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:35:45', null, '成功');
INSERT INTO `t_log` VALUES ('35tiL18jS7dGdWWNRo1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"，记录ID为tt9kQGrzlF1KSpuze5q--__eDQsYDSRMWfSCYSb02M的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:53:27', null, '成功');
INSERT INTO `t_log` VALUES ('3azBOkBMjZ0jr2Yzsc1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为h4moGfkVcCMyl9ZrF81--__g9yXfu7GqVPgW3ZOkeB的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:52:30', null, '成功');
INSERT INTO `t_log` VALUES ('3ee1G2nNjiMKiEXo579', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为7oVYTCmcuLguaMT6jmd--__n1y54WQbTwfJ3TBM6dU的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:23:05', null, '成功');
INSERT INTO `t_log` VALUES ('3HfWkZU8ZeA9BZo9wSp', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:58:39', null, '成功');
INSERT INTO `t_log` VALUES ('3IXdMBdiTDXTyWyyuwq', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:35:30', null, '成功');
INSERT INTO `t_log` VALUES ('3Jjp8L6GbO73JiAfi4L', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:43:56', '170054903628600000', '成功');
INSERT INTO `t_log` VALUES ('3K58Piic5kcC0HqlG6C', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:01', null, '成功');
INSERT INTO `t_log` VALUES ('3O10hG3wip497KZZ9Uu', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:55', null, '成功');
INSERT INTO `t_log` VALUES ('3opsoaXVUC0ApTYf1sP', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:28:54', null, '成功');
INSERT INTO `t_log` VALUES ('3rcS8BjbirZtlLFvMlY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为D8BVubFtOLyj9J8qzlG--__Wf4cCVNo886s3iN3lvQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:23:35', null, '成功');
INSERT INTO `t_log` VALUES ('3SWRgVSKQO4McYxvb4p', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:38:56', null, '成功');
INSERT INTO `t_log` VALUES ('3TyvUahAz93itPu1YXU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"，记录ID为TkqQtILOQgVUNUh5ouB--__5w1TpZZwkmeVLoGFxg2的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:50:01', null, '成功');
INSERT INTO `t_log` VALUES ('3U7vmjamJPYpuREEPY0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.32.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 01:58:16', '170018629643200000', '成功');
INSERT INTO `t_log` VALUES ('3UONoqsYHDsTsRm9dyL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目类型\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:16:12', null, '成功');
INSERT INTO `t_log` VALUES ('3uRM8VkzcKRl1Q8ku0c', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"，记录ID为iY13buZJc7jvkzLAKuF--__oZjaXGW0FfpkzFyFUSo的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:58:51', null, '成功');
INSERT INTO `t_log` VALUES ('3W9RFGimq5PFK5H6MeT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"，记录ID为KZ9KndWmhzJoUWwHpe0--__iCJiJYtjVW5ucmIROTr的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:18:59', null, '成功');
INSERT INTO `t_log` VALUES ('3WkygCFyngCifcX9jS4', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款单\"，记录ID为bWudvL0lnG6wQxmZiPf--__OA4RH8BeqL1bxI71F2W的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:09:10', null, '成功');
INSERT INTO `t_log` VALUES ('3XW91EE5jsOTk1YNksf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:50:26', null, '成功');
INSERT INTO `t_log` VALUES ('425Beri7JFVgFCF8BHY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为SCmDr3SmpTB4iAPz24l--__ojmQYrCnAvowW5SvtHj的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:49', null, '成功');
INSERT INTO `t_log` VALUES ('44zloA4V1qbjvR3hIIZ', 'crzTJNyZNpf9l62jxWG', 'zhangsan(张三)', 'zhangsan（张三）在名称为\"项目立项单\"的视图上进行了批量提交操作', '批量提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:58:50', null, '成功');
INSERT INTO `t_log` VALUES ('45b1KDr1GOsKWKMIR1L', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为8ytFVeomHZxW2w0Hhjb--__n1y54WQbTwfJ3TBM6dU的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:47:27', null, '成功');
INSERT INTO `t_log` VALUES ('4Blq6FvL2N7u3DBt2dB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:41', null, '成功');
INSERT INTO `t_log` VALUES ('4bSvdOf4Nsd6Xb3q3Ic', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:56:21', '170010698101500000', '成功');
INSERT INTO `t_log` VALUES ('4Ck5Sygn89pRxyIpP0U', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为4YuLjBWzxNEnaXcsQjr--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:06:53', null, '成功');
INSERT INTO `t_log` VALUES ('4cTFWO0YzyS9v3p2xQJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:51:19', null, '成功');
INSERT INTO `t_log` VALUES ('4dIveOvwCldGIMhGux0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:23:45', null, '成功');
INSERT INTO `t_log` VALUES ('4DqqdQziDdjsFi6dyBU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为Ap2y5zvkgBXnYGrb96z--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:01:12', null, '成功');
INSERT INTO `t_log` VALUES ('4IS1VRx6RSS4kHSCUrO', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:09:49', null, '成功');
INSERT INTO `t_log` VALUES ('4iSzPY4yL4bMDKPd6MU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:43:50', null, '成功');
INSERT INTO `t_log` VALUES ('4KaJI1qAlLFZk3VYqIa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为AG7V9BCOs4Svq8QDHWG--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:18:47', null, '成功');
INSERT INTO `t_log` VALUES ('4O1giB0cTdIxUe6hOdG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:58:21', null, '成功');
INSERT INTO `t_log` VALUES ('4QT3CeCRMKgnBtGuspS', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款明细\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:13:47', null, '成功');
INSERT INTO `t_log` VALUES ('4UnV5AXsQUAwOVsosRN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:45:02', null, '成功');
INSERT INTO `t_log` VALUES ('4uqCE1jg1IN5y9uL8wQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '视图-事件记录查询', '新建', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:04:18', null, null);
INSERT INTO `t_log` VALUES ('4UWwcpB4Uff6JQuW93t', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"安全管控列表\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:51:15', null, '成功');
INSERT INTO `t_log` VALUES ('4w2JwcvmEPNXQbtUXRA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"，记录ID为Zz2laGIaw1PXPB0AvDx--__5w1TpZZwkmeVLoGFxg2的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:49:47', null, '成功');
INSERT INTO `t_log` VALUES ('4zIsC6IK0fjnwyQOKWP', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:27:33', null, '成功');
INSERT INTO `t_log` VALUES ('4zT93viwPE4qibNrPVh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购及运费付款单\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:12:56', null, '成功');
INSERT INTO `t_log` VALUES ('50QOe9Emeaff1wxNkvm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为FxR71qdFE5pjHA05M7R--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:09', null, '成功');
INSERT INTO `t_log` VALUES ('50WKzRPezESzfmlgWjP', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:49', null, '成功');
INSERT INTO `t_log` VALUES ('51jwTy51K5SK4iJkhen', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为FmZAmloBoBeq2xGC4Qw--__wCZJ07qTQjC8ai29f4f的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:20:40', null, '成功');
INSERT INTO `t_log` VALUES ('5234sZEm2uN8PtfVkmH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为GXfLV16cHxeoUfIJXKd--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:50:52', null, '成功');
INSERT INTO `t_log` VALUES ('546kLLuWMbr0IYagt6E', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"入库\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:13:33', null, '成功');
INSERT INTO `t_log` VALUES ('55Q12OaqoLuSd3A7Gyo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为dGJTFLFLJ28uu0UxFbS--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:17', null, '成功');
INSERT INTO `t_log` VALUES ('598NDMwlUMdopxawJ3b', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为H8vyBfrwgoMwJwuoHPR--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:42:01', null, '成功');
INSERT INTO `t_log` VALUES ('5af7RSHXHEcX0AprjZG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购及运费付款单\"，记录ID为OLwLEC9np7Ujhur885U--__FhQok2yflsbWA9JCQt0的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:42:59', null, '成功');
INSERT INTO `t_log` VALUES ('5bgyqal97nNl5k4uET1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为Tv4SGwTfWTFLaYdKD0n--__n1y54WQbTwfJ3TBM6dU的表单上进行了保存并新增操作', '保存并新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:44:39', null, '成功');
INSERT INTO `t_log` VALUES ('5fLA0Sbug3TdqyEtzKa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商绩效考核\"的视图上进行了新建操作', '新建', '172.28.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 01:51:13', null, '成功');
INSERT INTO `t_log` VALUES ('5IdPa8rPXbDvQLN1rM0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为frBZHRA8KrluXa8ED7C--__4uRrLT7T87sJmdbRinQ的表单上进行了保存操作', '保存', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 04:02:49', null, '成功');
INSERT INTO `t_log` VALUES ('5LInDs5mbAWg2N7ZUI3', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:51:31', null, '成功');
INSERT INTO `t_log` VALUES ('5pFPeuhiwlmRY7A3M24', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:15', null, '成功');
INSERT INTO `t_log` VALUES ('5tLiuPbzswnap5VxQpn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为1S5i1wKZrJ6jQ951c9Z--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:33:22', null, '成功');
INSERT INTO `t_log` VALUES ('5zXIHYhLnxF8r4WfvbR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:26:32', null, '成功');
INSERT INTO `t_log` VALUES ('641ioIPeIFTz4HMW1g5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:22:15', null, '成功');
INSERT INTO `t_log` VALUES ('6CBTqnOYYdgjTWFnFIS', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:55:18', null, '成功');
INSERT INTO `t_log` VALUES ('6dIzB0CSJEXRpvePM8m', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:35:59', null, '成功');
INSERT INTO `t_log` VALUES ('6fnBbYakEWjqwi4qqYC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为v5Cis9zD6ttroiwtBru--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:51:42', null, '成功');
INSERT INTO `t_log` VALUES ('6GnaJhPjPLLqfE6c9EQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:33:51', null, '成功');
INSERT INTO `t_log` VALUES ('6ixsWpgIvfdB1MmDlGq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"系统主数据\"，记录ID为h5auCMVkGBQkx3lt7lc--__0yq9gkc0WDszfrE5g3z的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:29:43', null, '成功');
INSERT INTO `t_log` VALUES ('6Ju7RUZ4Z9csZkLLYd3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:16', null, '成功');
INSERT INTO `t_log` VALUES ('6K7huql10fc2hbZxBAh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:19:10', null, '成功');
INSERT INTO `t_log` VALUES ('6mkforr3wuSlldMmuLE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"运费单\"，记录ID为QwzLJfESo9WEARgtDmr--__93TAIe21Ql6s0bH47eu的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:33:08', null, '成功');
INSERT INTO `t_log` VALUES ('6N6j84YY5mrBhJbJklm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:13:30', '170061561038200000', '成功');
INSERT INTO `t_log` VALUES ('6oD1mIwVjB2s6Jn7KIK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试\"，记录ID为NcpKMXSq4x3VX0niaRW--__gBl5P5h53gNsqkhGL4b的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:05:24', null, '成功');
INSERT INTO `t_log` VALUES ('6U2DdR3VbE92r36yeaJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"质量管控\"，记录ID为94RZfzrnLDS858KCfOe--__itFXiGoMoAAARgTKvxI的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:00:07', null, '成功');
INSERT INTO `t_log` VALUES ('6uH2NyjO0hhvLV4y901', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:50:21', null, '成功');
INSERT INTO `t_log` VALUES ('6Umim3KoRZxz9sJkpzv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:45:40', null, '成功');
INSERT INTO `t_log` VALUES ('6V4sX2mHto2vtiwggCx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为OBq3XMEvsBlrkKchULv--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:13:44', null, '成功');
INSERT INTO `t_log` VALUES ('6VdxRwrBmou7zGEdWz8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统注销操作', '注销', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:17:58', null, '成功');
INSERT INTO `t_log` VALUES ('6W8zAPDmepCxwpokZSk', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:15', null, '成功');
INSERT INTO `t_log` VALUES ('6xRYtUbhFAV0plw8Keh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"，记录ID为ixkBRwLvY91xlHwHFkx--__uYjtVG9ickEm1AEFnob的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:08', null, '成功');
INSERT INTO `t_log` VALUES ('6xTuDR5m2VXee0YBaOE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工作任务单\"，记录ID为e3TXnEvvDMvV4pMA2hP--__TTHf4AYAnvx6pm5kw9j的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:48:40', null, '成功');
INSERT INTO `t_log` VALUES ('6yFxyPjFdt51Pja0ott', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为LMa4aBM4hSte31SAOjw--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:37:03', null, '成功');
INSERT INTO `t_log` VALUES ('70tSshFrvxtnMttDpg4', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:58:46', null, '成功');
INSERT INTO `t_log` VALUES ('72RlNUKult82kgwGocD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部项目立项单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:22:00', null, '成功');
INSERT INTO `t_log` VALUES ('72tEFHLjK53bi1zIBGl', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"移交工序表单\"，记录ID为iNF9ASYS7hd6LtQL1bo--__vCRHmSlzthRvQfmmJKt的表单上进行了确认操作', '确认', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:53:48', null, '成功');
INSERT INTO `t_log` VALUES ('72xA3TPfryt7kq7KAK3', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:32:36', null, '成功');
INSERT INTO `t_log` VALUES ('73kFG413tmcTDqKNlyt', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:51:34', null, '成功');
INSERT INTO `t_log` VALUES ('745Ma2t7kaLoZDeQYLy', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:10:31', null, '成功');
INSERT INTO `t_log` VALUES ('79VPbuwk1bSlRqWOBRZ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:58:28', null, '成功');
INSERT INTO `t_log` VALUES ('7cRsjQfTKv8lugbUqdR', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:50:33', null, '成功');
INSERT INTO `t_log` VALUES ('7dILF9FGQsAOZBeYVOw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为bFkqp630F8MoDBUDw7g--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:48:43', null, '成功');
INSERT INTO `t_log` VALUES ('7E7WsUML6EJdBdONCeB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目类型\"，记录ID为DFLjhmovzYzTFNY06Nc--__ADikv8WY0uDsdRBadjO的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:23:41', null, '成功');
INSERT INTO `t_log` VALUES ('7JpN14sdB4iLKIizVjY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为GJRT2OuEnJikWzdSs4Y--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:01:49', null, '成功');
INSERT INTO `t_log` VALUES ('7JtZxqljDEgBPM940dF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"安全管控\"，记录ID为v70NBBEPzpih8Z8DBvQ--__iGiSOpOIPVaWKuZB8Sm的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:05:20', null, '成功');
INSERT INTO `t_log` VALUES ('7Ks1ERXvAMqKkuhJLBP', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:00', null, '成功');
INSERT INTO `t_log` VALUES ('7lllgdmqtIXdeR1vnvr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为SZJHLCvTeqiKIH80zAU--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:45:02', null, '成功');
INSERT INTO `t_log` VALUES ('7LVgsl4mezUlZwQUEex', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:15:15', null, '成功');
INSERT INTO `t_log` VALUES ('7lztIGiiwezarV7gcwm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:52', null, '成功');
INSERT INTO `t_log` VALUES ('7mJOWeqculIGM9teV5M', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）在admin1（系统管理员）的界面进行了保存操作', '更新用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:17:40', null, '成功');
INSERT INTO `t_log` VALUES ('7NMC5sYKTHP9p9UFyVv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:34:34', null, '成功');
INSERT INTO `t_log` VALUES ('7nzcnJA1oBrf7QgDUQR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为UpGirJOYGfMKFkrflds--__OuOeakKWrL3kSSZLXSd的表单上进行了生成入库单操作', '生成入库单', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:58:03', null, '成功');
INSERT INTO `t_log` VALUES ('7Q3I0Qx1cVfmNoiwII5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为SMjLl08S9eGl8wuAXSy--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:13:54', null, '成功');
INSERT INTO `t_log` VALUES ('7rQwwiDsISGDg4YtPVX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:26', null, '成功');
INSERT INTO `t_log` VALUES ('7snDCSz9iPBkZaMexze', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为Qc69EItzoIFIKPMWw0C--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:57:44', null, '成功');
INSERT INTO `t_log` VALUES ('7TaHEd8SMl9YL6GcDxZ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:07', null, '成功');
INSERT INTO `t_log` VALUES ('7VEQy52SbdEtSmw54yx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:51:11', null, '成功');
INSERT INTO `t_log` VALUES ('7WXKLpnY18rnhand4Uq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为NH1PHumxgznq5y9Q85n--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:07:05', null, '成功');
INSERT INTO `t_log` VALUES ('7X6BpBERJGVNEEp3lsA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"，记录ID为dEfGnLzBQP42agD9wy4--__iCJiJYtjVW5ucmIROTr的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:06', null, '成功');
INSERT INTO `t_log` VALUES ('7y25MaugLxPN8aLQn64', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:43', null, '成功');
INSERT INTO `t_log` VALUES ('7Y8mLzEB67Hojv4qu0U', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:41', null, '成功');
INSERT INTO `t_log` VALUES ('82CPM5BrUAXc29B0Qrq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试卷\"，记录ID为bHMnHnOKbMG3lQWyFUc--__i7s6XAFwa0Lrw21bdrf的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:25:25', null, '成功');
INSERT INTO `t_log` VALUES ('8cZCh2Kln1V9yBkLSjO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库\"，记录ID为vkvv7CIWBc5tBnC3eSB--__XNbVhiZpvcGxu6TwrmY的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:38:00', null, '成功');
INSERT INTO `t_log` VALUES ('8f3N95Qua9rKgkEugYz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为LEXnxHVfWhBqjTBPfpQ--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:04:40', null, '成功');
INSERT INTO `t_log` VALUES ('8gkF7J9MsUADuuufAgm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:57:13', null, '成功');
INSERT INTO `t_log` VALUES ('8hv49boGDJNMTgDJxkg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"质量管控\"，记录ID为Pt7l32bYgGf9NcD6A7h--__itFXiGoMoAAARgTKvxI的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:01:26', null, '成功');
INSERT INTO `t_log` VALUES ('8hVu5OCP53UfyuuXIc1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为k0bTrTz1inoEmXPksUM--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:03:32', null, '成功');
INSERT INTO `t_log` VALUES ('8j6FrJdbNo8Qgl0eHqR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为eI2fNl4FZpQfq7rIb5t--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:58:48', null, '成功');
INSERT INTO `t_log` VALUES ('8JGPUwzONJzq1P3nEsH', 'crzTJNyZNpf9l62jxWG', 'zhangsan(张三)', 'zhangsan（张三）进行系统登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:56:04', '170053896386600000', '成功');
INSERT INTO `t_log` VALUES ('8JS9NnRM9EPOOIBvc1K', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:56', null, '成功');
INSERT INTO `t_log` VALUES ('8lL1f30PuyUM3Iz9l77', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为iT2sWETBcnkUdQztkgW--__FMt65zqIy94SOV1u4xO的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:57', null, '成功');
INSERT INTO `t_log` VALUES ('8LmrJIU6z2223g0B6f8', 'Ai6hllhNjS2ull9TKGb', 'admin(Admin)', '添加软件失败', '添加软件', '172.24.0.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 10:28:02', null, '失败');
INSERT INTO `t_log` VALUES ('8Ls9aNgTNYToZO7p1bc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:15:34', null, '成功');
INSERT INTO `t_log` VALUES ('8mLXGf7gTq2I0Pq4jjG', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:53:56', null, '成功');
INSERT INTO `t_log` VALUES ('8mR69n3RsbtmlhGi8DJ', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:10:33', null, '成功');
INSERT INTO `t_log` VALUES ('8N3Emj7ypYp8TSlvlTO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部项目立项单\"的视图上进行了Excel导入操作', 'Excel导入', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:23:45', null, '成功');
INSERT INTO `t_log` VALUES ('8NLRRKnk8W1jWSXYqwO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商分类\"，记录ID为S4iRddmVKs9aJJAf40d--__lnRtGpTlor4wjdxPlsK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:41:53', null, '成功');
INSERT INTO `t_log` VALUES ('8OhofJQ8LJLf5J7Nqpe', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"，记录ID为YAptwf8cdyUn94TYLat--__oZjaXGW0FfpkzFyFUSo的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:22:39', null, '成功');
INSERT INTO `t_log` VALUES ('8PETt5uQ67Ftp8nWgRp', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单\"的视图上进行了新建操作', '新建', '172.28.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 01:52:17', null, '成功');
INSERT INTO `t_log` VALUES ('8pgpqnI2rg4lw74RRxz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:23:54', null, '成功');
INSERT INTO `t_log` VALUES ('8S9P71Jbc7VfoX4V5pm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:50:30', null, '成功');
INSERT INTO `t_log` VALUES ('8slZe8j9avi4EDRcWRs', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:49:34', null, '成功');
INSERT INTO `t_log` VALUES ('8TTeuKG76J3FkHrCPjz', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:32:42', null, '成功');
INSERT INTO `t_log` VALUES ('8X6tiOlWp1HRvK5kWwt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为nRjG7ca1DH7EScUjkVH--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:08', null, '成功');
INSERT INTO `t_log` VALUES ('93WQ0tDfCClyywFgB7W', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:11:16', null, '成功');
INSERT INTO `t_log` VALUES ('94l7UUikWKsEicky3iL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为vAmioj7VBp9F2eBJnpx--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:57', null, '成功');
INSERT INTO `t_log` VALUES ('956HIJQfuLCp4QBDI1T', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为aIb73EUsXyJ51B5oSAt--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:18:42', null, '成功');
INSERT INTO `t_log` VALUES ('96BVQC2eAEhwOeNvBuM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为6s7HetVqbcuArJ2kLl7--__26GUrdJFdllI3LIixHJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:14:09', null, '成功');
INSERT INTO `t_log` VALUES ('96XMQUKzW6m7iXMjAhJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为otHrOIwdtTZo2REEVGl--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:43:46', null, '成功');
INSERT INTO `t_log` VALUES ('97GnzfLQGJSwRa1dPBP', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款单\"，记录ID为WFOC6uYbBwXEeYLPEIw--__OA4RH8BeqL1bxI71F2W的表单上进行了提交审批操作', '提交审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:13:25', null, '成功');
INSERT INTO `t_log` VALUES ('99JTKpyquWUYzj4Dphg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了提交审批操作', '提交审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:41:39', null, '成功');
INSERT INTO `t_log` VALUES ('9AE7R1evDw8W4VJ0BWi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为INoPMBWIuwjpvXuZIt0--__ojmQYrCnAvowW5SvtHj的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:27:39', null, '成功');
INSERT INTO `t_log` VALUES ('9d8uDIzhSa2xtBOO5BG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为P5Ue7NqOpCljBm37YL7--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:27', null, '成功');
INSERT INTO `t_log` VALUES ('9FYwVqrk4FRzmI7pNl4', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:52', null, '成功');
INSERT INTO `t_log` VALUES ('9LrJ6BdNVHhvGdRbhso', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:48:23', null, '成功');
INSERT INTO `t_log` VALUES ('9ly3CRF4mAMco7RDiFr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购退货表\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:13:14', null, '成功');
INSERT INTO `t_log` VALUES ('9S0eGGtdSF1zzhocWTg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:35', null, '成功');
INSERT INTO `t_log` VALUES ('9VmCwikt3VHxiH1RTDb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为7eTKrvaVDNvigK6lHMN--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:09:03', null, '成功');
INSERT INTO `t_log` VALUES ('9YFOsQYV0GvqtXRfvZa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为zi0c8PqAKYhqb8y1Pfd--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:02:42', null, '成功');
INSERT INTO `t_log` VALUES ('9YLIAtklK7cXjNPXk7s', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:49', null, '成功');
INSERT INTO `t_log` VALUES ('9ymqR6cNs1mmWMKOoto', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为vtE86OqBaTNxrxxbNRS--__HNVQplRqvUjt3oYLr2S的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:39', null, '成功');
INSERT INTO `t_log` VALUES ('9YN0z82MlwcKJIuUBuv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为azOKS5m1Lu4QEcwLG1q--__g0zLnKmg2lFtizVC3tH的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:35:53', null, '成功');
INSERT INTO `t_log` VALUES ('9YPdE0nHp8pJPBeR9jB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为RMdjaFYCQDo8tI9yUQh--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:57:55', null, '成功');
INSERT INTO `t_log` VALUES ('9zDrOzLvwo1to47BbOa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:59', null, '成功');
INSERT INTO `t_log` VALUES ('a2Fk4m0anZfstpL8Ddm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:11', null, '成功');
INSERT INTO `t_log` VALUES ('a5mjjejjktyHuOB2jRF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:13:49', null, '成功');
INSERT INTO `t_log` VALUES ('A69kBKTOx8vdYOmD9cn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:08:36', '170053251567500000', '成功');
INSERT INTO `t_log` VALUES ('a6EwynAmkRpSeT4eycy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:22:36', null, '成功');
INSERT INTO `t_log` VALUES ('A8VT5RT79VOyFGnDrKE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"，记录ID为9OdH3nm4v481IuX8HrF--__5w1TpZZwkmeVLoGFxg2的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:36:04', null, '成功');
INSERT INTO `t_log` VALUES ('ACmYDh7IENSSycSWP77', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:35:43', '170054494282400000', '成功');
INSERT INTO `t_log` VALUES ('Ad4zrAYhoQPs0aOscbF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:48:32', null, '成功');
INSERT INTO `t_log` VALUES ('agDMrEUXKapNFuLEO7c', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为vNSvrqSwLqxuUCCafah--__n1y54WQbTwfJ3TBM6dU的表单上进行了保存并新增操作', '保存并新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:46:30', null, '成功');
INSERT INTO `t_log` VALUES ('AGuNlPVl1deOjq60kZ2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:44:17', null, '成功');
INSERT INTO `t_log` VALUES ('AHI0JshjUisb8n6RQBJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为iK3Gnxzy6cCVBG4o6tI--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:10', null, '成功');
INSERT INTO `t_log` VALUES ('ahVDKTR8L5cxUzd3sZo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为HJs2GvJxtOPleUYkurn--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:07:15', null, '成功');
INSERT INTO `t_log` VALUES ('aiSMGx7lsETLvlNK1tF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-event_form-7XRAduzaCgcMVDxXo5A--__qGyDZsLMuZ0J4FSlRvu', '取消', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:36', null, null);
INSERT INTO `t_log` VALUES ('aJ0zbMBvbsulNFGoHyX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:49:14', null, '成功');
INSERT INTO `t_log` VALUES ('ajqw7LjsfN0fFriSQsG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为X23y7loedboi9KPma8b--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:40:21', null, '成功');
INSERT INTO `t_log` VALUES ('AkdorbjzmeKy7mJRa19', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:44', null, '成功');
INSERT INTO `t_log` VALUES ('AkMkGz1vRKzLxSnc7F0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"的视图上进行了新增操作', '新增', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:35:51', null, '成功');
INSERT INTO `t_log` VALUES ('akSWHJBYI1xhgTLh0H4', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:57', null, '成功');
INSERT INTO `t_log` VALUES ('aKuijpu3Tirr3o5C2m0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:50:21', null, '成功');
INSERT INTO `t_log` VALUES ('aKvnmC0Q8awImLfoa33', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:30:34', null, '成功');
INSERT INTO `t_log` VALUES ('amaAc7UmR1RjJdGMAfb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目台账\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:26:46', null, '成功');
INSERT INTO `t_log` VALUES ('amfeWVtOXDwiihwGtrr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UM8BxD7WcJlKw5f53hi--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:05', null, '成功');
INSERT INTO `t_log` VALUES ('AMOHnNj2u90qPczfEYM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:45:51', null, '成功');
INSERT INTO `t_log` VALUES ('An4Jm8lkl18uGg5m0zw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:47', null, '成功');
INSERT INTO `t_log` VALUES ('aO7PVKNNLGcvFJo1wkV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为otnjDsk8dVGJJ3KMnEg--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:56:12', null, '成功');
INSERT INTO `t_log` VALUES ('AOJXGLEDdBY9ImOKMx0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:55', null, '成功');
INSERT INTO `t_log` VALUES ('aqF9QTfdJiZCSLh73J9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:57:39', null, '成功');
INSERT INTO `t_log` VALUES ('aTLJ53GvZ4pKyukacer', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为KuIU7nGWzkM0OuubpYa--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:02:54', null, '成功');
INSERT INTO `t_log` VALUES ('aTLYbn5xRdyCPNslXi9', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:36', null, '成功');
INSERT INTO `t_log` VALUES ('aVvixBziCqduwQuvYSX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试\"，记录ID为NcpKMXSq4x3VX0niaRW--__gBl5P5h53gNsqkhGL4b的表单上进行了发布操作', '发布', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:05:25', null, '成功');
INSERT INTO `t_log` VALUES ('axaax6zmlB9aR5wW9k1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为2PKMzMEmnWBcWfDo28L--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:13:23', null, '成功');
INSERT INTO `t_log` VALUES ('axq4CBUfiykvC4pN5hm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:04:55', '170054669466800000', '成功');
INSERT INTO `t_log` VALUES ('b6qBvUYJmSNouJFjrXC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为FxR71qdFE5pjHA05M7R--__4uRrLT7T87sJmdbRinQ的表单上进行了测试操作', '测试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:01', null, '成功');
INSERT INTO `t_log` VALUES ('B7PFMLaO5nOqgtegiwx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:15:38', null, '成功');
INSERT INTO `t_log` VALUES ('B9c7h2P2J2LMTL0iKfT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为WUWrj6uSb3EBhmK4CNF--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:02:03', null, '成功');
INSERT INTO `t_log` VALUES ('BAJDqvLTXrpGy8rOsHS', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:31:14', null, '成功');
INSERT INTO `t_log` VALUES ('baLzpP74Yl8GXM3xxqt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:33:33', null, '成功');
INSERT INTO `t_log` VALUES ('BARAKqkaY4SDO4QM852', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"，记录ID为YqeIlss9rpBV8xDYVqG--__z5fq1CVo9vRuD62tMPl的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:14:20', null, '成功');
INSERT INTO `t_log` VALUES ('bATt7771ln9Q2XbaPVe', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:27:52', null, '成功');
INSERT INTO `t_log` VALUES ('BBc7VMTFaOwd4otp4Nh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:59:26', null, '成功');
INSERT INTO `t_log` VALUES ('BbuEILZeQsRXQjJVIWf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"安全管控\"，记录ID为v70NBBEPzpih8Z8DBvQ--__iGiSOpOIPVaWKuZB8Sm的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:05:13', null, '成功');
INSERT INTO `t_log` VALUES ('bbUvh9WKbWMkdm1CXzo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务\"，记录ID为M2e2nNGHd2cw1yzAmaJ--__pbW44DltlJN4N1vdppg的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:45:01', null, '成功');
INSERT INTO `t_log` VALUES ('BckUzhJmvniwyVqz6rf', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:37', null, '成功');
INSERT INTO `t_log` VALUES ('bd2jhQymYG7B21Xy0x7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为ryCgLG8WWN6WpTFQ9HO--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:48:48', null, '成功');
INSERT INTO `t_log` VALUES ('bEBlgqxUOB0wavmCF2f', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:55:12', null, '成功');
INSERT INTO `t_log` VALUES ('bErBm5x3nIhvvD0ksRm', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:34', null, '成功');
INSERT INTO `t_log` VALUES ('BGQvlA2Mquyd2dblI3P', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:09:20', null, '成功');
INSERT INTO `t_log` VALUES ('BGXBo8qkFM7jMmElyGh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:57:06', null, '成功');
INSERT INTO `t_log` VALUES ('bHEvvuBK533FYKW1ue7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:51:39', null, '成功');
INSERT INTO `t_log` VALUES ('bHMF6039nrUl95RX6uy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部项目立项单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:11:38', null, '成功');
INSERT INTO `t_log` VALUES ('bjCOd3NjePHeP2T45gG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商分类\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:41:36', null, '成功');
INSERT INTO `t_log` VALUES ('bL1DPhkjdJlwiY35WyC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为KrVGS6agemXkVPtGYTg--__ojmQYrCnAvowW5SvtHj的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:41', null, '成功');
INSERT INTO `t_log` VALUES ('bLcFUW14CfWOitnIpdC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为i5ge9AxAXLLzWRhfGwL--__g9yXfu7GqVPgW3ZOkeB的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:54:04', null, '成功');
INSERT INTO `t_log` VALUES ('BomgPhUftwEt9H6RYPQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:05:21', null, '成功');
INSERT INTO `t_log` VALUES ('boQ8LMUiLtzkUMYImP5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为aMm8LohhQX4mJJn1Xxt--__wCZJ07qTQjC8ai29f4f的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:02:07', null, '成功');
INSERT INTO `t_log` VALUES ('BpP5KUTkB2ff1y000KM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"，记录ID为j2ORu9N1k2nLObtppLp--__eDQsYDSRMWfSCYSb02M的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:52:25', null, '成功');
INSERT INTO `t_log` VALUES ('BptAr7PT16c2U9qPCgo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:47:56', null, '成功');
INSERT INTO `t_log` VALUES ('bqd7wBhNLT3GECluWSD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为55yKsPMUgqleArXm82K--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:56:14', null, '成功');
INSERT INTO `t_log` VALUES ('BSORBAajBnL1ycl12GV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为GyHnTqmNyjumKq7eAoU--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:01:15', null, '成功');
INSERT INTO `t_log` VALUES ('bvjESqfFZqyupcdtzQa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"，记录ID为SGganb2CkIZPB7JrRoX--__oZjaXGW0FfpkzFyFUSo的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:58:43', null, '成功');
INSERT INTO `t_log` VALUES ('bWRa40inze4Yc7aumxm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务\"，记录ID为vcUJuRzFMUex4aX3U8H--__pbW44DltlJN4N1vdppg的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:43:54', null, '成功');
INSERT INTO `t_log` VALUES ('By9TR9vju7GY7eoXgwl', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:47:01', null, '成功');
INSERT INTO `t_log` VALUES ('Bze7qSzwk9jviX42kd9', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:28', null, '成功');
INSERT INTO `t_log` VALUES ('C2Eg4It995DnkxNXdTw', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:30:08', null, '成功');
INSERT INTO `t_log` VALUES ('C8GBqNbwQqXtlOQjpIQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为UeaKIJjoloisut72an0--__HNVQplRqvUjt3oYLr2S的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:29', null, '成功');
INSERT INTO `t_log` VALUES ('c8jlZ7AL87F31WHk4sb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:51:13', null, '成功');
INSERT INTO `t_log` VALUES ('ca2bO31LPEjpTErJV0J', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"，记录ID为d69u0dg5PdwbeE1FNSS--__z5fq1CVo9vRuD62tMPl的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:14:32', null, '成功');
INSERT INTO `t_log` VALUES ('CAamvBfJSsVem7MYg1F', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为RYwX26uoEzrpjVqvihV--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:45:44', null, '成功');
INSERT INTO `t_log` VALUES ('CdMfQMBjd1Va1JgV35n', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:53:30', null, '成功');
INSERT INTO `t_log` VALUES ('CETAdgPCziETas8wC1E', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:11:09', '170013306893700000', '成功');
INSERT INTO `t_log` VALUES ('chDPbTrZJaWj6tlGRR3', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:51:05', null, '成功');
INSERT INTO `t_log` VALUES ('CHM0DKouUGBzf5k5ShY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为38VPxTs7Mgqd1ND1QQq--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:45:52', null, '成功');
INSERT INTO `t_log` VALUES ('cI4OkpMBg11PWGFOQpy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为qja9jUupiHBdXKDeUeK--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:58:42', null, '成功');
INSERT INTO `t_log` VALUES ('ciDiWogDuxn2I3mKcv8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.176.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-20 10:25:14', '170047591350800000', '成功');
INSERT INTO `t_log` VALUES ('CiliGkWk7bETrgTgxQX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为yAGQhTkCqVxmeQFCw7s--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:06:27', null, '成功');
INSERT INTO `t_log` VALUES ('cJ8eGUdphQLxe3hWyOJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:52:04', null, '成功');
INSERT INTO `t_log` VALUES ('cJNSBTBvQKJ97FrhEgD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-LeaveApplication-CZlKwEfB1XRpNQE1EoX--__Snw5utsO4r6LIogffqz', '返回', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 19:53:48', null, null);
INSERT INTO `t_log` VALUES ('CkVZDDkJ4sVwk5hqRkl', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为iK3Gnxzy6cCVBG4o6tI--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:18:35', null, '成功');
INSERT INTO `t_log` VALUES ('clwX0IffiX7c6Ta2g0b', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-customer_record_form-VB3Q1SAQpkqiqoZnrbL--__4W7ch8NkMQtwQA5smSg', '取消', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:49', null, null);
INSERT INTO `t_log` VALUES ('cmBll8JdR11kX0aLFnZ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:47:27', null, '成功');
INSERT INTO `t_log` VALUES ('CNM6anxKQwW0EF9vquL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:41:19', null, '成功');
INSERT INTO `t_log` VALUES ('CoAuiPaRkHDhJhFNeGO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库\"，记录ID为vkvv7CIWBc5tBnC3eSB--__XNbVhiZpvcGxu6TwrmY的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:52:59', null, '成功');
INSERT INTO `t_log` VALUES ('coDpMO4cu8D4ZwD5qHI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务\"，记录ID为vcUJuRzFMUex4aX3U8H--__pbW44DltlJN4N1vdppg的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:43:48', null, '成功');
INSERT INTO `t_log` VALUES ('ConWUfX7gldGtm5bR52', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为SCmDr3SmpTB4iAPz24l--__ojmQYrCnAvowW5SvtHj的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:49', null, '成功');
INSERT INTO `t_log` VALUES ('cp0gja3gOdGiXInZARh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:50:50', null, '成功');
INSERT INTO `t_log` VALUES ('cP4URmVSNKZAFFNZ6OO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为d85qQ6PWVktt2Gpede6--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:56:00', null, '成功');
INSERT INTO `t_log` VALUES ('CroEag97Fl7tm5v8JfU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:59:30', null, '成功');
INSERT INTO `t_log` VALUES ('cRStHFcqCH9zgN5UY3I', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为iT2sWETBcnkUdQztkgW--__FMt65zqIy94SOV1u4xO的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:09', null, '成功');
INSERT INTO `t_log` VALUES ('cRuNTDEnRGBtZhjeQE2', 'crzTJNyZNpf9l62jxWG', 'zhangsan(张三)', 'zhangsan（张三）进行系统注销操作', '注销', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:14:11', null, '成功');
INSERT INTO `t_log` VALUES ('CRYznZZ3eG67B8FgHKA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的考试\"的视图上进行了新建考试操作', '新建考试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:04:22', null, '成功');
INSERT INTO `t_log` VALUES ('CSvzl7AfvUrG7PgFdft', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:37:05', null, '成功');
INSERT INTO `t_log` VALUES ('CsYfu3DFyOSpMfqZFru', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:14', '170053141414700000', '成功');
INSERT INTO `t_log` VALUES ('Cu4TUh4KpxjzAzV0LaV', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:23:03', null, '成功');
INSERT INTO `t_log` VALUES ('cUTl2DSkf5LQURBiSLM', '__oP0irhWXGA2oZRusW1d', '系统管理员', '登录系统', '登录', '192.168.80.1', null, '3CffNlgt9B9StIjIUPB', '2023-03-03 00:33:19', '167780359947200000', null);
INSERT INTO `t_log` VALUES ('CUyQNXguHCDJM1MXfbI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:51:09', null, '成功');
INSERT INTO `t_log` VALUES ('CvIGexIdF1EK17vFbig', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"质量管控\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:58:38', null, '成功');
INSERT INTO `t_log` VALUES ('CYsEMHZJfsqIWB8rEGI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为d85qQ6PWVktt2Gpede6--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:18:30', null, '成功');
INSERT INTO `t_log` VALUES ('cZ9LUqkBDLea4jUeKzU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为6UQWYzLkSrG8NjYEzm0--__g0zLnKmg2lFtizVC3tH的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:39:17', null, '成功');
INSERT INTO `t_log` VALUES ('CZQelBRgJLEvb0PVFCH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"，记录ID为KZ9KndWmhzJoUWwHpe0--__iCJiJYtjVW5ucmIROTr的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:00', null, '成功');
INSERT INTO `t_log` VALUES ('D0UXtn8eHfFlJvXZGab', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为uub0bhM3NNemzJzPrOP--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:04:20', null, '成功');
INSERT INTO `t_log` VALUES ('d43QDsWwMMSk81mTOOM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为KrVGS6agemXkVPtGYTg--__ojmQYrCnAvowW5SvtHj的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:42', null, '成功');
INSERT INTO `t_log` VALUES ('D4C4hK1PrdawcLt1bgO', 'Ai6hllhNjS2ull9TKGb', 'admin(Admin)', '添加软件失败', '添加软件', '172.24.0.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 10:28:41', null, '失败');
INSERT INTO `t_log` VALUES ('d59V4LKA8Ftq6CWlqWx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为3CAX9ylZMKvDszWPvdS--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:41:00', null, '成功');
INSERT INTO `t_log` VALUES ('d5pRFClTxDmoALfX8sH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为3H3d2Gc5aqDhIra5GV2--__g0zLnKmg2lFtizVC3tH的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:35:49', null, '成功');
INSERT INTO `t_log` VALUES ('D8NNKTnFVuREkp41jIn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为d85qQ6PWVktt2Gpede6--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:59:06', null, '成功');
INSERT INTO `t_log` VALUES ('DbDKQq8StvymbXmg71M', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为vtE86OqBaTNxrxxbNRS--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:39', null, '成功');
INSERT INTO `t_log` VALUES ('DbnHbbrilkQCKCwyI8Y', 'Ai6hllhNjS2ull9TKGb', 'admin(Admin)', 'admin（Admin）进行管理后台登录操作', '登录', '172.24.0.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 10:26:21', null, '成功');
INSERT INTO `t_log` VALUES ('DBXY9205EJkIT9wRQym', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为G6UyEdehxcGJ8kKu82t--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:23:58', null, '成功');
INSERT INTO `t_log` VALUES ('dc2P5dqM4lmAADU2eX9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:26:06', null, '成功');
INSERT INTO `t_log` VALUES ('DDly6Tg2r9qj2aO3xqr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-customer_record_form-DFAyIkGn8R1rCvk4uvD--__4W7ch8NkMQtwQA5smSg', '取消', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:03:46', null, null);
INSERT INTO `t_log` VALUES ('DEjUWhjAeMuFwaZlfDe', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:31:05', null, '成功');
INSERT INTO `t_log` VALUES ('DGa6ePAZUU8zegZlQEb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为i5ge9AxAXLLzWRhfGwL--__g9yXfu7GqVPgW3ZOkeB的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:54:05', null, '成功');
INSERT INTO `t_log` VALUES ('Dgi4dbnzWQiPn19OxSQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为GH5LMNftCC0leAKDsAh--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:04:06', null, '成功');
INSERT INTO `t_log` VALUES ('dh0lbmQ66w0TBU3PhIq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为6UQWYzLkSrG8NjYEzm0--__g0zLnKmg2lFtizVC3tH的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:39:15', null, '成功');
INSERT INTO `t_log` VALUES ('DHgrR5Grs8jZAp3ppHj', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为3UHgX3UcIMhjvmgTsGo--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:10:42', null, '成功');
INSERT INTO `t_log` VALUES ('DIHpCSy5oXXAxPUOqNO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:00:18', null, '成功');
INSERT INTO `t_log` VALUES ('dipK1TuB7fVMP7dwX3k', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为QzuyCAkmZAOCoUvw41M--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:30:58', null, '成功');
INSERT INTO `t_log` VALUES ('DIqXJLzhIPckbqng0Uk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:40:24', null, '成功');
INSERT INTO `t_log` VALUES ('dj00fb2RpaiKmtmYQdh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为AyFsHXYH6HqBpgwGE53--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:06:36', null, '成功');
INSERT INTO `t_log` VALUES ('dj64LlXhtAv3FkwZq1c', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为55yKsPMUgqleArXm82K--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:56:15', null, '成功');
INSERT INTO `t_log` VALUES ('djRYxptuQyeH1mu3dl1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"，记录ID为M3RZGv0QrNDxf8O97OS--__BOaTHF5cz04VHBL4fW1的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:31:14', null, '成功');
INSERT INTO `t_log` VALUES ('dJUZut4CTMHyGsF8PhQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目台账\"的视图上进行了导出Excel操作', '导出Excel', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:10:54', null, '成功');
INSERT INTO `t_log` VALUES ('DL1FSsOTH3UqIghRWmE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.96.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-18 02:05:30', '170027312987800000', '成功');
INSERT INTO `t_log` VALUES ('dmMFH79sm4BFbAqwTN5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务\"，记录ID为G7jOZF3lrnMi1GHwGVZ--__pbW44DltlJN4N1vdppg的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:44:27', null, '成功');
INSERT INTO `t_log` VALUES ('dNPmySMr9WO6YNeFwS7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"，记录ID为dst43eFqwv1YdbQEhSD--__uYjtVG9ickEm1AEFnob的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:18', null, '成功');
INSERT INTO `t_log` VALUES ('dnQUiF7TVwIWwvD3L2H', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:18:54', null, '成功');
INSERT INTO `t_log` VALUES ('dNsG8610G2Jl8QE8oQU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:17', null, '成功');
INSERT INTO `t_log` VALUES ('DpfHZNXoxc87DdaF1If', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为lcIbOaPLR7wQj8g4zEs--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:41:07', null, '成功');
INSERT INTO `t_log` VALUES ('DPnANg3t4rAyu36BHd5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试卷\"，记录ID为BNaR2wS7Vi3obyjAae7--__i7s6XAFwa0Lrw21bdrf的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:04:09', null, '成功');
INSERT INTO `t_log` VALUES ('dPyeko8mjvntjwsogBG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:37:35', null, '成功');
INSERT INTO `t_log` VALUES ('dPzp0FC1nFQpZ7bvROA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:18:18', null, '成功');
INSERT INTO `t_log` VALUES ('DqWKmcl4ifK2nGix9Es', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为gzT2jRzYBY73BxFLai1--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:45:07', null, '成功');
INSERT INTO `t_log` VALUES ('DQx7wRyAkyRjzdJBmCh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:49:36', null, '成功');
INSERT INTO `t_log` VALUES ('dtJAfFvPPiXP9hDNYqo', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:01', null, '成功');
INSERT INTO `t_log` VALUES ('DWO4MrjKweTbfCK7Ekf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:12:38', '170053635814500000', '成功');
INSERT INTO `t_log` VALUES ('dWvwgeIAqhdiHIMqT7T', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:36:29', null, '成功');
INSERT INTO `t_log` VALUES ('DXG4oGN7nsmQAvvRKuF', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:10:35', null, '成功');
INSERT INTO `t_log` VALUES ('dXHEzx5mq88YEAxIUrW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:24:02', null, '成功');
INSERT INTO `t_log` VALUES ('DxzJ4IQ6gjR2Z8lXCps', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为Sqr0LTV7Ch0Qg0C8wME--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:30', null, '成功');
INSERT INTO `t_log` VALUES ('DyZr09FafBPfthxlUkc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为pndVIg8XfhLp5BcVopQ--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:35:03', null, '成功');
INSERT INTO `t_log` VALUES ('E06k3RJGTBEqyQgM9oF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:46:56', null, '成功');
INSERT INTO `t_log` VALUES ('E0ytMFHfct4e5uFC3xs', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为lcIbOaPLR7wQj8g4zEs--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:41:06', null, '成功');
INSERT INTO `t_log` VALUES ('e2vjZJlDTGsNcM8DIgB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为dTj1VXe3tgBX9FZ9X1c--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:54:45', null, '成功');
INSERT INTO `t_log` VALUES ('e4ZmhwRcBIFBZ7LNRfp', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UM8BxD7WcJlKw5f53hi--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:28:49', null, '成功');
INSERT INTO `t_log` VALUES ('e6F01DAQrBkpHMdKhAK', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 04:17:30', null, '成功');
INSERT INTO `t_log` VALUES ('e8KP3ogBxqpwyGUkiVI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为2KYx3SihtUIq4R7NEPg--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:51:08', null, '成功');
INSERT INTO `t_log` VALUES ('ECz1DbXusEHN2ZBHU4M', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目类型\"，记录ID为GFpt0DHBGIMwpBZhEIQ--__ADikv8WY0uDsdRBadjO的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:19:11', null, '成功');
INSERT INTO `t_log` VALUES ('EczLN1T3TMWlwL1noLJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程\"，记录ID为DDEwFXqjjwZP0ZW7zFv--__39g8WbWek4hssApD4LL的表单上进行了发布操作', '发布', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:23:39', null, '成功');
INSERT INTO `t_log` VALUES ('edTiv0XDpao6pIY01mW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"质量管控\"，记录ID为94RZfzrnLDS858KCfOe--__itFXiGoMoAAARgTKvxI的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:00:06', null, '成功');
INSERT INTO `t_log` VALUES ('eE0EOwgoAXyJouVHqwi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为XmQK7WTtjwZo4Psw1Pf--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:06:47', null, '成功');
INSERT INTO `t_log` VALUES ('EE5cVClkR3cuyygYv7C', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为6s7HetVqbcuArJ2kLl7--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:14:08', null, '成功');
INSERT INTO `t_log` VALUES ('eeW9x0DVJIzTx27hZTb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为OBq3XMEvsBlrkKchULv--__26GUrdJFdllI3LIixHJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:13:44', null, '成功');
INSERT INTO `t_log` VALUES ('egrz85yDGNKTAbvvAxU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为z9HTjiFM8D8fA4ZeEwL--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:40:57', null, '成功');
INSERT INTO `t_log` VALUES ('ehNZUJM2r8gmCVPlzfV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为GJRT2OuEnJikWzdSs4Y--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:01:46', null, '成功');
INSERT INTO `t_log` VALUES ('Ei5yua8BnyOlIxCbuoq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为PGCgkAhe6XZcoqZwyaN--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:19:55', null, '成功');
INSERT INTO `t_log` VALUES ('ej7RHpH99jnjcbHFc8g', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:42:16', null, '成功');
INSERT INTO `t_log` VALUES ('eKT9g9fkfPe9eUdZRWw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:03', null, '成功');
INSERT INTO `t_log` VALUES ('EN1a0AxPCJw8Ha5devJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为w7VqJvd9u75fHDDDE15--__ojmQYrCnAvowW5SvtHj的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:58', null, '成功');
INSERT INTO `t_log` VALUES ('EnEa9CLI9FRVqIQpdoV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试卷\"，记录ID为BNaR2wS7Vi3obyjAae7--__i7s6XAFwa0Lrw21bdrf的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:04:08', null, '成功');
INSERT INTO `t_log` VALUES ('enlNnVJdiOCkySK2GkX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了导出操作', '导出', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:44:15', null, '成功');
INSERT INTO `t_log` VALUES ('eRNPBXjcBk4WT14bAU4', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:01', null, '成功');
INSERT INTO `t_log` VALUES ('esaUwppiRImGccReZzT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为3CAX9ylZMKvDszWPvdS--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:30:57', null, '成功');
INSERT INTO `t_log` VALUES ('eSJHyl3KVi6epqZIQdN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为3CAX9ylZMKvDszWPvdS--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:31:03', null, '成功');
INSERT INTO `t_log` VALUES ('eSTOG0U2Jm0i7oMzgOH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为WUWrj6uSb3EBhmK4CNF--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:47:16', null, '成功');
INSERT INTO `t_log` VALUES ('etBKKMFfJSt4F3dQDx7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为IPeTNAQw0tKj5EUPWxm--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:18:26', null, '成功');
INSERT INTO `t_log` VALUES ('etKamLesxQXFf51JGz7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为FxR71qdFE5pjHA05M7R--__4uRrLT7T87sJmdbRinQ的表单上进行了测试操作', '测试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:08', null, '成功');
INSERT INTO `t_log` VALUES ('eU4S0NcienWQuFjMaES', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:27', null, '成功');
INSERT INTO `t_log` VALUES ('Eu92PmbfoPIIf5JVb9n', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:06:18', null, '成功');
INSERT INTO `t_log` VALUES ('eVRbZoeTWyPUrBy5VCB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:00:58', null, '成功');
INSERT INTO `t_log` VALUES ('ewK3QngZ7HPQNRtqLNx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UV9i9vMOyVsmFTLOXUM--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:18', null, '成功');
INSERT INTO `t_log` VALUES ('eWXxMtbuANjq1pHM971', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:28:25', null, '成功');
INSERT INTO `t_log` VALUES ('exOBnKkLVKjjSjUVsPB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为3mmbGYz2aLczLa6G4Gp--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:39:45', null, '成功');
INSERT INTO `t_log` VALUES ('F7B4PN9NjzSqCru0FQu', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为z0FFkah9gN4WqpMXRwP--__g9yXfu7GqVPgW3ZOkeB的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:54:13', null, '成功');
INSERT INTO `t_log` VALUES ('fckkKsOwXSVuFBGXxE5', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:33:09', null, '成功');
INSERT INTO `t_log` VALUES ('FDaNmGBSzINuYAMu9NU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:26:19', null, '成功');
INSERT INTO `t_log` VALUES ('fDApc7A53Z8cetzfiFV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品管理\"，记录ID为XOZgnTkFFSazZl96fHB--__ruhmvMZLB04xUgocVy3的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:07:56', null, '成功');
INSERT INTO `t_log` VALUES ('fdMRGnfLIzvY5Rvl5K6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-engineer_assignment_form-5KeWDFH9VQ9wr5O8f3i--__A0KDy4zztL2r93exxGg', '取消', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:03:08', null, null);
INSERT INTO `t_log` VALUES ('FdwzwPE6dqL8XtQQBnO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"，记录ID为mg8EFuFtY2tz5mvjihN--__vUEJS897NWxwBBRpl4K的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:05:58', null, '成功');
INSERT INTO `t_log` VALUES ('FDz7PbfyLlpZpabhCKJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 12:20:02', '170013720190200000', '成功');
INSERT INTO `t_log` VALUES ('ffj39L39C0EGNkB1P4W', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:47:07', null, '成功');
INSERT INTO `t_log` VALUES ('fieVnWoyaduQt5B18UB', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:46', null, '成功');
INSERT INTO `t_log` VALUES ('FINtQxH5enBrJy7NhLw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为8P2ZvIUE9dvpEqY7BGa--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:12:50', null, '成功');
INSERT INTO `t_log` VALUES ('fK9hczbUEoNLXoqKkKg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:31', null, '成功');
INSERT INTO `t_log` VALUES ('FlnvPF5WvquetCerMWD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:41:46', null, '成功');
INSERT INTO `t_log` VALUES ('flXkozCk28RUFMWEtfx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为7xziggjDsFgHUaITDIH--__FMt65zqIy94SOV1u4xO的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:04', null, '成功');
INSERT INTO `t_log` VALUES ('fMSLu1UxNX087U92zJJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"移交工序表单\"，记录ID为iiuWxrIKfdVnBpzQCTw--__vCRHmSlzthRvQfmmJKt的表单上进行了确认操作', '确认', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:51:00', null, '成功');
INSERT INTO `t_log` VALUES ('FpVOeEbSvaxHDacQmWz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为epzW2d8frgFbQWvge3g--__Wf4cCVNo886s3iN3lvQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:13:42', null, '成功');
INSERT INTO `t_log` VALUES ('fre4pqkKmKTTLsozqbz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为2PKMzMEmnWBcWfDo28L--__26GUrdJFdllI3LIixHJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:13:24', null, '成功');
INSERT INTO `t_log` VALUES ('FRJVxRRq1Zb0ma4VT4W', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:47:51', null, '成功');
INSERT INTO `t_log` VALUES ('FRlhkSwDz8XcJtPwrmM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为iK3Gnxzy6cCVBG4o6tI--__4uRrLT7T87sJmdbRinQ的表单上进行了确认完成操作', '确认完成', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:06', null, '成功');
INSERT INTO `t_log` VALUES ('fsj49If1kKt7f7WEzqr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为uNFyMw8YN4PLYI78x0C--__wCZJ07qTQjC8ai29f4f的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:52:42', null, '成功');
INSERT INTO `t_log` VALUES ('fsUQkmRlWCGcGrhtDcN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为Ap2y5zvkgBXnYGrb96z--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:51:13', null, '成功');
INSERT INTO `t_log` VALUES ('ftcPQeVnVBZrohCVhr1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为mnF2mpJfFXcICzLYATF--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:15:35', null, '成功');
INSERT INTO `t_log` VALUES ('FUl7rhCc4GxOwpqZHiQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"，记录ID为dEfGnLzBQP42agD9wy4--__iCJiJYtjVW5ucmIROTr的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:05', null, '成功');
INSERT INTO `t_log` VALUES ('fux69EQROcBwwLx926S', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:30:03', null, '成功');
INSERT INTO `t_log` VALUES ('fvJrzfHnbhVa8zryOmu', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:27:12', null, '成功');
INSERT INTO `t_log` VALUES ('fxWDDoy4RnfzuFv0fvB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款单\"，记录ID为UoONmrRqsE3L2WspbBL--__OA4RH8BeqL1bxI71F2W的表单上进行了提交审批操作', '提交审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:14:00', null, '成功');
INSERT INTO `t_log` VALUES ('G7zTmyFxot4r6NcdJxL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:01', null, '成功');
INSERT INTO `t_log` VALUES ('GA1IVz8uJ3odYPvoKG7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:00:12', null, '成功');
INSERT INTO `t_log` VALUES ('GAeeFTeTOtdBBn6o0Km', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:04', null, '成功');
INSERT INTO `t_log` VALUES ('GB0jwbjM49uxSGOxVWU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"移交工序表单\"，记录ID为lEFwtsBPIVRcknCYxuc--__vCRHmSlzthRvQfmmJKt的表单上进行了确认操作', '确认', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:52:00', null, '成功');
INSERT INTO `t_log` VALUES ('gB6LYph3m6NIp28JOb9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为SZJHLCvTeqiKIH80zAU--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:45:03', null, '成功');
INSERT INTO `t_log` VALUES ('gFqsLD7NZ5gkQ6TkmVN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为Qc69EItzoIFIKPMWw0C--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:57:44', null, '成功');
INSERT INTO `t_log` VALUES ('GhIK27fe2oTDc2vopsD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:58:23', null, '成功');
INSERT INTO `t_log` VALUES ('gHN1oAuU3AG81ghgTPJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为2KYx3SihtUIq4R7NEPg--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:50:46', null, '成功');
INSERT INTO `t_log` VALUES ('GHrM12MFzrigiOF1O4W', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:10:54', null, '成功');
INSERT INTO `t_log` VALUES ('gkuF7y26yfOwMSd8EjD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为bF4nf2r79Ft9vkvb3CI--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:48:13', null, '成功');
INSERT INTO `t_log` VALUES ('GLx2a74xzDfIRU4GYKa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:18:11', null, '成功');
INSERT INTO `t_log` VALUES ('gM1LOeZmZgWSoFWxY9J', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:57:08', '170054622833000000', '成功');
INSERT INTO `t_log` VALUES ('gMVwYnOmpcSnDVgHlRM', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:44', null, '成功');
INSERT INTO `t_log` VALUES ('gMwahg1rhoXyFw3XN7U', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了导入操作', '导入', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:49:48', null, '成功');
INSERT INTO `t_log` VALUES ('GmY1afykvELqpexJXwG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试\"，记录ID为bGKYX0nwkGWq1huiDuU--__gBl5P5h53gNsqkhGL4b的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:04:59', null, '成功');
INSERT INTO `t_log` VALUES ('GnCQyCvm261soXB5UJL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库试题\"的视图上进行了新建试题操作', '新建试题', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:38:09', null, '成功');
INSERT INTO `t_log` VALUES ('gNGeWuZ6UTKvu7kOu1U', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"，记录ID为KaeUX8LAewgz7IrXMqM--__oZjaXGW0FfpkzFyFUSo的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:30:49', null, '成功');
INSERT INTO `t_log` VALUES ('GodAiL7ZaMStCLYXaHd', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:34:19', null, '成功');
INSERT INTO `t_log` VALUES ('gOOAFqQoNtMkhUzSEU3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"，记录ID为nViBT99SKvGnusEjWle--__vUEJS897NWxwBBRpl4K的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:06:12', null, '成功');
INSERT INTO `t_log` VALUES ('gP88sQgHVPiIk9rdomz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UV9i9vMOyVsmFTLOXUM--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:48:45', null, '成功');
INSERT INTO `t_log` VALUES ('GPndMXmmgpt1VQ7CWV2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:27:50', null, '成功');
INSERT INTO `t_log` VALUES ('GpzSTsQl9oJQDnBj6B8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"系统主数据\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:29:21', null, '成功');
INSERT INTO `t_log` VALUES ('gRaltd59hyN5aVbVZsm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为vfO9BgdgyI0EWrImdyP--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:14:09', null, '成功');
INSERT INTO `t_log` VALUES ('GrZFKhvdZzypZ70AovR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为0apiXihgzOIQJSxFMgK--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:47:28', null, '成功');
INSERT INTO `t_log` VALUES ('gSjer9EtyzSnVWzTkBT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:02:05', null, '成功');
INSERT INTO `t_log` VALUES ('GTmipZUyoJOIaNrtJpE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为nlTAXDqHNR6xjjNp9iQ--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:19:45', null, '成功');
INSERT INTO `t_log` VALUES ('GU3G8ohzsV5eI9G8JHN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:24:24', null, '成功');
INSERT INTO `t_log` VALUES ('gVKLMevB2FZ9PZJ3nFn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为POBEBoWkgS6uLfkRZQF--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:08:40', null, '成功');
INSERT INTO `t_log` VALUES ('gVQvUbSwem6xTcWk969', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:10:29', null, '成功');
INSERT INTO `t_log` VALUES ('gXbgzWFCVMpaKH0IpUk', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）在admin1（系统管理员）的界面进行了保存操作', '更新用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:58:39', null, '成功');
INSERT INTO `t_log` VALUES ('gYGDRPDbCf9jccOI7dn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"，记录ID为ixkBRwLvY91xlHwHFkx--__uYjtVG9ickEm1AEFnob的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:09', null, '成功');
INSERT INTO `t_log` VALUES ('gzecGdEGA3EPci08kpw', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 12:21:08', null, '成功');
INSERT INTO `t_log` VALUES ('GZWX2U8LXxmqWFo6v1k', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为NbyZP6jTYBbBygZnmAG--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:30:18', null, '成功');
INSERT INTO `t_log` VALUES ('H0FU54VY4B49pOB2rYW', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:03', null, '成功');
INSERT INTO `t_log` VALUES ('H0pnytaG79BpFnQrtRQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为zi0c8PqAKYhqb8y1Pfd--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:02:24', null, '成功');
INSERT INTO `t_log` VALUES ('h2GiuBP0zbSlgiKP5Qq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.240.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 09:25:27', '170064512735400000', '成功');
INSERT INTO `t_log` VALUES ('H2rUuQZuF5Czqt4LehJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部项目立项单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:13:44', null, '成功');
INSERT INTO `t_log` VALUES ('h3EBDxe4LAfIGtL87fh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:55', null, '成功');
INSERT INTO `t_log` VALUES ('H7jQWCu3k69P5S154rS', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:55', null, '成功');
INSERT INTO `t_log` VALUES ('HapeUELbDBMCVOgqOvm', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）在admin1（系统管理员）的界面进行了保存操作', '更新用户', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:55:56', null, '成功');
INSERT INTO `t_log` VALUES ('hBfDeuH3huvj0RJ0aNK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了批量提交操作', '批量提交', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:50:35', null, '成功');
INSERT INTO `t_log` VALUES ('HbUb06CTn2OLYV70Czq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:32:36', null, '成功');
INSERT INTO `t_log` VALUES ('HbXXzuYL5idJreG00Y1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为OdDQrfZrjr6iWxt4lvz--__n1y54WQbTwfJ3TBM6dU的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:43:28', null, '成功');
INSERT INTO `t_log` VALUES ('HcDr3cTi2sS2IA0QbJh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:48:50', null, '成功');
INSERT INTO `t_log` VALUES ('hCJPiwOdTRxGUt858oI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"系统主数据\"，记录ID为h5auCMVkGBQkx3lt7lc--__0yq9gkc0WDszfrE5g3z的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:29:42', null, '成功');
INSERT INTO `t_log` VALUES ('HCn1ZPaGG07EtQUM3ar', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:13:43', null, '成功');
INSERT INTO `t_log` VALUES ('hDB5eOQExdFc7g6gy4z', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:36', null, '成功');
INSERT INTO `t_log` VALUES ('HdWlXuNxZYdbhz7M2gr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为3CAX9ylZMKvDszWPvdS--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:36', null, '成功');
INSERT INTO `t_log` VALUES ('hHQtgcEBFKRIrPCCobv', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:41', null, '成功');
INSERT INTO `t_log` VALUES ('HiwIK7QCgJIxyMk4pFR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为h4moGfkVcCMyl9ZrF81--__g9yXfu7GqVPgW3ZOkeB的表单上进行了保存并新增操作', '保存并新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:52:17', null, '成功');
INSERT INTO `t_log` VALUES ('HJdAeTbtWXht5myPPsK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:53:05', '170010678485200000', '成功');
INSERT INTO `t_log` VALUES ('hjHJPS5uchCrjvYznc9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为sFcjAfj8RW1l5XvgLLq--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:20', null, '成功');
INSERT INTO `t_log` VALUES ('hKaurLwPkAQdogRqETO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:41:51', null, '成功');
INSERT INTO `t_log` VALUES ('hLTMGqBkJT7RoEIKI2v', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为rv734mKSTgIPEBxnnvT--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:03:03', null, '成功');
INSERT INTO `t_log` VALUES ('hnfDnyxSjuSOjywgbdM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为iK3Gnxzy6cCVBG4o6tI--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:13', null, '成功');
INSERT INTO `t_log` VALUES ('hNI63ugjztJoftujWrA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:17:48', null, '成功');
INSERT INTO `t_log` VALUES ('HNsmtxqstU3P66Nv1Q5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为YDDtCpoMH9EUirPw6nR--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:36:20', null, '成功');
INSERT INTO `t_log` VALUES ('HNTuUvZB7zOzEuTasZY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为HWKyG2r09nV5UT9kitf--__g9yXfu7GqVPgW3ZOkeB的表单上进行了保存并新增操作', '保存并新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:50:09', null, '成功');
INSERT INTO `t_log` VALUES ('hoLYqkIavxAiVTvMB87', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为E7Bsu0zlb9XmbRkRBlS--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:49:29', null, '成功');
INSERT INTO `t_log` VALUES ('HqPQAtErWOXH1qPrh9W', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:12', null, '成功');
INSERT INTO `t_log` VALUES ('hQXjQx04GHtH58zencs', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为Z8JxAAOTtkQrbfJB4GF--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:14:51', null, '成功');
INSERT INTO `t_log` VALUES ('HRDFBd7iuzOhsrcRnKY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:45:22', null, '成功');
INSERT INTO `t_log` VALUES ('HRnG1BrWtSer26Fbgku', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '注销系统', '注销', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:16', null, null);
INSERT INTO `t_log` VALUES ('hSaduL3GdHGnk7zVzqd', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"的视图上进行了新增操作', '新增', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:35:57', null, '成功');
INSERT INTO `t_log` VALUES ('HSCQHvWuhBwuwhjZokL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:00', null, '成功');
INSERT INTO `t_log` VALUES ('HSKksZ9KyVGVJDAA71B', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:23:02', null, '成功');
INSERT INTO `t_log` VALUES ('hwC81eTCBHFwzpJZXmE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款单\"，记录ID为UoONmrRqsE3L2WspbBL--__OA4RH8BeqL1bxI71F2W的表单上进行了提交审批操作', '提交审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:12:42', null, '成功');
INSERT INTO `t_log` VALUES ('hwFJW1sPvPwp2iIvtQu', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"，记录ID为fSL6KcODj8uLlTwBpsw--__5w1TpZZwkmeVLoGFxg2的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:35:46', null, '成功');
INSERT INTO `t_log` VALUES ('HzfEzFsUcPvsaAefH57', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:14:41', null, '成功');
INSERT INTO `t_log` VALUES ('HzWW6QkYGkQ3Op38Hx0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为gWUkDC4ggosYQEPcoqp--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:49:39', null, '成功');
INSERT INTO `t_log` VALUES ('i0gPjJU7KWFzgBqwfzT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:40:16', null, '成功');
INSERT INTO `t_log` VALUES ('i1I1UwAzLnrr2JFDv0g', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为WoEZRWxFlHv8MS1yQDz--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:48:04', null, '成功');
INSERT INTO `t_log` VALUES ('I28jPvVjLYLuMWys37x', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为yiN0r4Nmn6vtXUIC9MV--__g0zLnKmg2lFtizVC3tH的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:36:43', null, '成功');
INSERT INTO `t_log` VALUES ('I2wa12EzplCpjoe9w8c', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为38VPxTs7Mgqd1ND1QQq--__wCZJ07qTQjC8ai29f4f的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:26:13', null, '成功');
INSERT INTO `t_log` VALUES ('I302JQfuLexpF5BilXC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:31', null, '成功');
INSERT INTO `t_log` VALUES ('I3dscoNkeCoGFsbvSGg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为uNFyMw8YN4PLYI78x0C--__wCZJ07qTQjC8ai29f4f的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:51:54', null, '成功');
INSERT INTO `t_log` VALUES ('I4FwOZRHbNM7LWnLKmb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:44:00', null, '成功');
INSERT INTO `t_log` VALUES ('i4zSpVGQLmCdF0ezFhV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:46:16', null, '成功');
INSERT INTO `t_log` VALUES ('i4ZZzJskf7yAHutW6X2', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:34:36', null, '成功');
INSERT INTO `t_log` VALUES ('I5RIs0uo0nEMJzWH4YD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:50:00', null, '成功');
INSERT INTO `t_log` VALUES ('i7bCpKEtfAnxWUz4Uc5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:48:15', null, '成功');
INSERT INTO `t_log` VALUES ('i8eZndgigM61fGNCMmy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:01:47', null, '成功');
INSERT INTO `t_log` VALUES ('i8f6CVqGeMEfKto3LMV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:48:05', null, '成功');
INSERT INTO `t_log` VALUES ('iaA5IbCwOJU4nsBn8Ez', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为j9wjIjL0zSzoaOpG7VC--__n1y54WQbTwfJ3TBM6dU的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:47:44', null, '成功');
INSERT INTO `t_log` VALUES ('ianNZSknX6wQtYWM12B', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为6WDU80T9yEl2t07pIVW--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:15:12', null, '成功');
INSERT INTO `t_log` VALUES ('iC48X6r5FPRlLkyG17k', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产入库\"，记录ID为Cy9uJXY4Ep5ILCx9VfE--__fnDch31KzAW5JykJ8yJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:58:07', null, '成功');
INSERT INTO `t_log` VALUES ('ieewLWtwAdAkmn1zy3n', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:52:23', null, '成功');
INSERT INTO `t_log` VALUES ('IG2BRBScS76nmCgdwnF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:57:18', null, '成功');
INSERT INTO `t_log` VALUES ('Ii6or0ZbsFA1Leu7Ur7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为RtPPXMu0S4us394FL16--__wCZJ07qTQjC8ai29f4f的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:27:12', null, '成功');
INSERT INTO `t_log` VALUES ('iInWjjOb8Oo6OfeUHK6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:48:48', null, '成功');
INSERT INTO `t_log` VALUES ('ijmkReYOAX6eBOctWDP', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:23:01', null, '成功');
INSERT INTO `t_log` VALUES ('iJTALYnDOUAvXIKQdPU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务\"，记录ID为vcUJuRzFMUex4aX3U8H--__pbW44DltlJN4N1vdppg的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:43:55', null, '成功');
INSERT INTO `t_log` VALUES ('IJxcJy4VIp92YiX4Vtk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:44:35', null, '成功');
INSERT INTO `t_log` VALUES ('IKmtNffOEwGZtA4Szpc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:09', null, '成功');
INSERT INTO `t_log` VALUES ('iLHrmceP3V4JT2IReuU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:15:33', null, '成功');
INSERT INTO `t_log` VALUES ('ilkaEmTA7cGiIkJDffW', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:13', null, '成功');
INSERT INTO `t_log` VALUES ('ILM4hf6lbIpzQ7fhhx9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:29:53', null, '成功');
INSERT INTO `t_log` VALUES ('imHuj1VXZVT5IRXOHkB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"，记录ID为nVrvDH5mPG1WscvmBCz--__x22TfJ9GtTbbTM8CASB的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:17:46', null, '成功');
INSERT INTO `t_log` VALUES ('ioOts6sH6RABV0eWTvQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-LeaveApplication-n7Dy0CxoNANKnAm3fSM--__Snw5utsO4r6LIogffqz', '返回', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 19:53:46', null, null);
INSERT INTO `t_log` VALUES ('IpggjiIlSVZnqRjo3nb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:16', null, '成功');
INSERT INTO `t_log` VALUES ('ipLPBeHlu01Jj8xnEKT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为8HH47dEn0cozqXBjejU--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:39', null, '成功');
INSERT INTO `t_log` VALUES ('IpS9gNnzxqHM8N3PAA1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为58i72YSSyvDmQyIXNbs--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:13:48', null, '成功');
INSERT INTO `t_log` VALUES ('IPxS7XvPuIPCxfRn2m5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为G6UyEdehxcGJ8kKu82t--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:24:07', null, '成功');
INSERT INTO `t_log` VALUES ('iqCXz6qinT5Vz1V8Pxi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:24', null, '成功');
INSERT INTO `t_log` VALUES ('IRdj0Iewj0brbxDngi5', '__oP0irhWXGA2oZRusW1d', '系统管理员', '登录系统', '登录', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 19:53:33', '168225081252400000', null);
INSERT INTO `t_log` VALUES ('IRetTVOlSoLoMgt3kVs', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:01:38', null, '成功');
INSERT INTO `t_log` VALUES ('iS4ZiuUGiHp0LPgmh2o', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:55:12', null, '成功');
INSERT INTO `t_log` VALUES ('ISF1SNprECTBRXcGkOd', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.32.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 02:42:23', '170018894329800000', '成功');
INSERT INTO `t_log` VALUES ('IspImp4rRHbSZQMx06z', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为m53LMzSkSHNuO5uID1h--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:15:57', null, '成功');
INSERT INTO `t_log` VALUES ('iSWRq1ur3TnDTm1zdbn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:40:20', null, '成功');
INSERT INTO `t_log` VALUES ('ITtxpNzGpm6bFYQ4iPT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了Excel导入操作', 'Excel导入', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:21:05', null, '成功');
INSERT INTO `t_log` VALUES ('IVRD3DkrVu4TqUnM9eI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为pn0BSNskQrwu7WgEIHq--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:23', null, '成功');
INSERT INTO `t_log` VALUES ('iwbAqHIDp3yfaHn16ro', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为cf5EwXATzDprR5TIQZX--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:41', null, '成功');
INSERT INTO `t_log` VALUES ('iYi9HG6YCYInezXWT0F', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:22', null, '成功');
INSERT INTO `t_log` VALUES ('IzBYLBe8hSgVhmFrVA3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"移交工序表单\"，记录ID为yJl3qjrbnGZgYO6tYgg--__vCRHmSlzthRvQfmmJKt的表单上进行了确认操作', '确认', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:53:25', null, '成功');
INSERT INTO `t_log` VALUES ('J1RWMqSwguauXqg96dw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"，记录ID为Pgl2yasufelr4dGzRSS--__oZjaXGW0FfpkzFyFUSo的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:30:21', null, '成功');
INSERT INTO `t_log` VALUES ('j2rKd32sv4TqCM1Vduj', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为qzGnLEr6ZrLj4Pg68Rx--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:55:46', null, '成功');
INSERT INTO `t_log` VALUES ('j4tAuLWJ5Squ9Pv0VOL', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '172.28.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:41:40', null, '成功');
INSERT INTO `t_log` VALUES ('J5ru4m0QLJK5GrP0uYt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:02', null, '成功');
INSERT INTO `t_log` VALUES ('j63h0Sr2ZYxXSizVCT6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:31:14', null, '成功');
INSERT INTO `t_log` VALUES ('j7bzjTWW0uEfJLFXp81', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为nVTUT6g1HAGeV0ojDuj--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:44', null, '成功');
INSERT INTO `t_log` VALUES ('JBRxaNvHcFHL15WYppf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:50:41', null, '成功');
INSERT INTO `t_log` VALUES ('jc8Ogjggw0yd3ZkSER2', null, 'admin(Admin)', '添加软件', '企业域', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 19:59:24', null, null);
INSERT INTO `t_log` VALUES ('jCLem9QsLI3ttfYVFXs', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"，记录ID为pSEeFPPbwa0iOfHZCoH--__Vt7h4bgyjQXp8FUN9Mz的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:20', null, '成功');
INSERT INTO `t_log` VALUES ('Jf1oNYpGKAFhhwISAZf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为IWgs85YPCBQpTphXpua--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:04:18', null, '成功');
INSERT INTO `t_log` VALUES ('JFNR0E4K8GbxsrJUSrP', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:55', null, '成功');
INSERT INTO `t_log` VALUES ('jg1fM9MyCSTcpEeawkt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:26:09', null, '成功');
INSERT INTO `t_log` VALUES ('JgtIwBFFmQuZqUOyFZL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:40:39', null, '成功');
INSERT INTO `t_log` VALUES ('JIf0zzJkUh8msFjcZNd', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:34:00', null, '成功');
INSERT INTO `t_log` VALUES ('jif3onmXVBAI4Dsqwh9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部项目立项单\"的视图上进行了Excel导入操作', 'Excel导入', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:11:34', null, '成功');
INSERT INTO `t_log` VALUES ('jIk0HlsPLpwTkeTYkAW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:48:01', null, '成功');
INSERT INTO `t_log` VALUES ('jixEIcRG3Nkqu7WHvtQ', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:45', null, '成功');
INSERT INTO `t_log` VALUES ('jja0VIrAToLwElZCJcv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:23:49', null, '成功');
INSERT INTO `t_log` VALUES ('JJRir1TePP90WT5uAgM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为HWKyG2r09nV5UT9kitf--__g9yXfu7GqVPgW3ZOkeB的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:53:40', null, '成功');
INSERT INTO `t_log` VALUES ('JKUYPw7lXibbTgKmAfN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:35:49', null, '成功');
INSERT INTO `t_log` VALUES ('JLx8fwV3z1iMknECz7j', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:49:16', null, '成功');
INSERT INTO `t_log` VALUES ('JmpD6XwZKyT2uuQPgMG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:09:19', null, '成功');
INSERT INTO `t_log` VALUES ('jMYmabZGIVxIjhhaG4t', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UM8BxD7WcJlKw5f53hi--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:27:18', null, '成功');
INSERT INTO `t_log` VALUES ('jN4LDEcU43bYPHezDuG', '__oP0irhWXGA2oZRusW1d', '系统管理员', '登录系统', '登录', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:22', '168225122162800000', null);
INSERT INTO `t_log` VALUES ('jO6dr6Dv3GtbqvjbTql', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为Po9hAQPh8TW1S6OHT8l--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:03:43', null, '成功');
INSERT INTO `t_log` VALUES ('JpXXGDyx6H23cjE64ej', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:55:51', null, '成功');
INSERT INTO `t_log` VALUES ('jQYMvngIgkDBkm2voah', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"，记录ID为O3nDmqVkNJrjmuO2P6X--__uYjtVG9ickEm1AEFnob的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:25', null, '成功');
INSERT INTO `t_log` VALUES ('jr7pPLFkhL6twwHAbqq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:07:10', null, '成功');
INSERT INTO `t_log` VALUES ('JRkI95CqfWbo0GKTFvD', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）更新了admin1（系统管理员）的上级信息', '更新用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:55:30', null, '成功');
INSERT INTO `t_log` VALUES ('Jrs7nzfJb7tmvz0uNGn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为37qKyfizDU5s5RwcI5n--__OuOeakKWrL3kSSZLXSd的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:00:09', null, '成功');
INSERT INTO `t_log` VALUES ('ju47CvTyhp6zfLYoK0r', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为lcIbOaPLR7wQj8g4zEs--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:57', null, '成功');
INSERT INTO `t_log` VALUES ('juCDjxO4WizifQb6ung', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务卡片模板\"，记录ID为L5qt2zi8zcJpiJZLvCV--__9eTh5FVaLSkgRJSa7Vw的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:05:56', null, '成功');
INSERT INTO `t_log` VALUES ('jUgGupBcOsaEsGpyeZh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为ehjG5cbVDbx5FhNFRye--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:07:25', null, '成功');
INSERT INTO `t_log` VALUES ('jUWRFkwUdjoQ4jfIvO0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:45', null, '成功');
INSERT INTO `t_log` VALUES ('jvjk6WfhGZFsrkgPrEC', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:52:23', null, '成功');
INSERT INTO `t_log` VALUES ('JwppfKjNSWdix6VYbtw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:52:21', null, '成功');
INSERT INTO `t_log` VALUES ('jxpO9bl29bSxTdYFV5A', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:48', null, '成功');
INSERT INTO `t_log` VALUES ('jYiRjE3jWRXOkdbgpUu', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为YDDtCpoMH9EUirPw6nR--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:35:29', null, '成功');
INSERT INTO `t_log` VALUES ('JZ8w9bnn8XCSYEFsYWn', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:51:32', null, '成功');
INSERT INTO `t_log` VALUES ('K0M7WVLuMvIL91KNcgV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目类型\"，记录ID为GFpt0DHBGIMwpBZhEIQ--__ADikv8WY0uDsdRBadjO的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:19:12', null, '成功');
INSERT INTO `t_log` VALUES ('k1G6Zt1JI4rIjqq5nMT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为d85qQ6PWVktt2Gpede6--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:07:23', null, '成功');
INSERT INTO `t_log` VALUES ('K4mF3tNJ9nn8pwTxfJZ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为9wTR1tbjtiYnJWQTeyF--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:43:00', null, '成功');
INSERT INTO `t_log` VALUES ('K66DGOk3TjRtTGqXpGg', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:53', null, '成功');
INSERT INTO `t_log` VALUES ('k6xWkpBkQtHt3I0723g', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"的视图上进行了删除操作', '删除', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:51:57', null, '成功');
INSERT INTO `t_log` VALUES ('k8CbS2algFh6xciJ144', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.30.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 07:07:02', '170011842164800000', '成功');
INSERT INTO `t_log` VALUES ('KEjXJ7UtSRlMF7sJyO5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:54:36', '170055327643400000', '成功');
INSERT INTO `t_log` VALUES ('KJIGjrB9Xgidd8Az9Yd', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为V42iA21tguHRgLxpZEJ--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:37:30', null, '成功');
INSERT INTO `t_log` VALUES ('kjVPl9Lri6uyjJP77xy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户\"，记录ID为XqNi2g2A6YBrzXcYQG0--__ES2TjQxeouDsoEyrPKh的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:36:02', null, '成功');
INSERT INTO `t_log` VALUES ('kK9LoUWsdlsNz8NR0Qq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:06:17', null, '成功');
INSERT INTO `t_log` VALUES ('kMVSaCriyBcVYLQiphu', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:51:33', null, '成功');
INSERT INTO `t_log` VALUES ('KnvptKZU93vwvP2aqAF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:04:02', null, '成功');
INSERT INTO `t_log` VALUES ('kOPVdaGm2g0fAsGT02z', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为AOR0tFd7sEBE3CGPy5X--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:43', null, '成功');
INSERT INTO `t_log` VALUES ('kOQYsEBTYJf6cb5v7D8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为otHrOIwdtTZo2REEVGl--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:43:42', null, '成功');
INSERT INTO `t_log` VALUES ('kpBPkgVUCxWq7TxXHfE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程\"，记录ID为wTOgqywfhLPxe8Xa5vs--__39g8WbWek4hssApD4LL的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:26:35', null, '成功');
INSERT INTO `t_log` VALUES ('KPUJzublcsrwqPOmFIS', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为PSN7nvdIbkyr7nYEfd2--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:41:16', null, '成功');
INSERT INTO `t_log` VALUES ('kqQb3hgCyLRmhCsHEYC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为0apiXihgzOIQJSxFMgK--__wCZJ07qTQjC8ai29f4f的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:26:06', null, '成功');
INSERT INTO `t_log` VALUES ('kr7KLrZaJcMpe2K2GMF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.240.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 09:20:17', '170064481729900000', '成功');
INSERT INTO `t_log` VALUES ('KSiDux1LLj0q9jFQRPH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程\"，记录ID为DDEwFXqjjwZP0ZW7zFv--__39g8WbWek4hssApD4LL的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:23:40', null, '成功');
INSERT INTO `t_log` VALUES ('KSJJBybYCWBobI8RQgi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为6x2bRyNkqOCkhey4ZYN--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:26:01', null, '成功');
INSERT INTO `t_log` VALUES ('KSjPMhfbJuNVIfr9Xpx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:48:26', null, '成功');
INSERT INTO `t_log` VALUES ('KT4xU8rtSnPX7GC7ip2', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）在admin1（系统管理员）的界面进行了保存操作', '更新用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:18:40', null, '成功');
INSERT INTO `t_log` VALUES ('KT8s2sTZmXWCI3uzGYc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-engineer_assignment_form-SJLhHsgWyx6vsMOBSJ1--__A0KDy4zztL2r93exxGg', '取消', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:02:53', null, null);
INSERT INTO `t_log` VALUES ('KTfoNVpw9DExbcdhTZm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:12:38', null, '成功');
INSERT INTO `t_log` VALUES ('kTPrj6G7auUrqT9gZfn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:22:17', null, '成功');
INSERT INTO `t_log` VALUES ('KTsAnmNlFhIKgQ8lJFt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为k0bTrTz1inoEmXPksUM--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:03:34', null, '成功');
INSERT INTO `t_log` VALUES ('kwMPQBJS52H5VCO1nOm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-event_form-6NmcYospxTd9DsMQDjy--__qGyDZsLMuZ0J4FSlRvu', '新建客户', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:03:44', null, null);
INSERT INTO `t_log` VALUES ('kXFRyX9yzCbOiMB4qZX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工单记录表\"的视图上进行了新建操作', '新建', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:13:36', null, '成功');
INSERT INTO `t_log` VALUES ('kXnpJj15IKYuHRlrAw6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:58', null, '成功');
INSERT INTO `t_log` VALUES ('kxUUpO6kho3fMXhzy7s', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为d85qQ6PWVktt2Gpede6--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:16:40', null, '成功');
INSERT INTO `t_log` VALUES ('kXWtX6tWa3QOPSMt2Kk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库\"，记录ID为vkvv7CIWBc5tBnC3eSB--__XNbVhiZpvcGxu6TwrmY的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:38:01', null, '成功');
INSERT INTO `t_log` VALUES ('Ky4KRnmbr2bj95N0QCt', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:17:04', null, '成功');
INSERT INTO `t_log` VALUES ('Kz5pwtmVjcsMQSLlQTM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:52', null, '成功');
INSERT INTO `t_log` VALUES ('KZUjfnr0FtQNzsr6A0h', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"，记录ID为SGganb2CkIZPB7JrRoX--__oZjaXGW0FfpkzFyFUSo的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:58:23', null, '成功');
INSERT INTO `t_log` VALUES ('l1t9f65lQOqX0O8BO2z', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:51:18', null, '成功');
INSERT INTO `t_log` VALUES ('l2cJ8IwaErY8ok9axHe', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:04:12', '170020105207600000', '成功');
INSERT INTO `t_log` VALUES ('L42vDTPKDkGNRgPkSUq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:30:20', null, '成功');
INSERT INTO `t_log` VALUES ('l4KmMaRCRCXSKmFXof0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:43:22', null, '成功');
INSERT INTO `t_log` VALUES ('L5rOgamQCVktQxSFKTw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:45:43', '170055634281500000', '成功');
INSERT INTO `t_log` VALUES ('L5XEtDKrFpJRdmfZHh7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统注销操作', '注销', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:59:17', null, '成功');
INSERT INTO `t_log` VALUES ('LA7geRIMuqEzeupdDn0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库\"，记录ID为vkvv7CIWBc5tBnC3eSB--__XNbVhiZpvcGxu6TwrmY的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:52:59', null, '成功');
INSERT INTO `t_log` VALUES ('laIFXnlC9zl0ddcMhRf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"运费单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:33:12', null, '成功');
INSERT INTO `t_log` VALUES ('LB0XpUKCqTV1RTGWOHJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为YDDtCpoMH9EUirPw6nR--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:35:36', null, '成功');
INSERT INTO `t_log` VALUES ('LDCzTNC6tiYL4Rfgdvz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"系统主数据\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:16:21', null, '成功');
INSERT INTO `t_log` VALUES ('leisue7fv4ozRIq0LAj', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:30:15', null, '成功');
INSERT INTO `t_log` VALUES ('LGclHTxkLtcJK4JXKQj', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"，记录ID为YTqG0Vxiwu8gK6Boiyc--__Vt7h4bgyjQXp8FUN9Mz的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:14', null, '成功');
INSERT INTO `t_log` VALUES ('LGNPDihkxMxOzAbrmOV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:46:41', null, '成功');
INSERT INTO `t_log` VALUES ('lGP6DtASIyPd01JbILa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为i5ge9AxAXLLzWRhfGwL--__g9yXfu7GqVPgW3ZOkeB的表单上进行了保存并新增操作', '保存并新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:49:06', null, '成功');
INSERT INTO `t_log` VALUES ('lh1XHn2k9QUpeCuDFHV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"，记录ID为OVYf43SO5KdsXHDg3pD--__BOaTHF5cz04VHBL4fW1的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:31:58', null, '成功');
INSERT INTO `t_log` VALUES ('LHp3THE2GWW7cCrXHYG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:37', null, '成功');
INSERT INTO `t_log` VALUES ('lImypIJyH5Sno6M19RO', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）zhangsan（张三）', '新建用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:55:15', null, '成功');
INSERT INTO `t_log` VALUES ('LiSu4ukvCT1hk5RVZSA', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:13', null, '成功');
INSERT INTO `t_log` VALUES ('LIy3XBd0Ik7uDJJ0jZ3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UM8BxD7WcJlKw5f53hi--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:27:19', null, '成功');
INSERT INTO `t_log` VALUES ('LKEc9h7Fjd4xM00OgW5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:42:23', null, '成功');
INSERT INTO `t_log` VALUES ('LLS2Z1eyzEl26One3Or', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:58:32', null, '成功');
INSERT INTO `t_log` VALUES ('lLz2mTv8ikLrWXnI8LL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为qmPvTEhTSQ8H61QnqIh--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:49:03', null, '成功');
INSERT INTO `t_log` VALUES ('lry7bZeqiIRNkxR8Lht', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为sFcjAfj8RW1l5XvgLLq--__4uRrLT7T87sJmdbRinQ的表单上进行了测试操作', '测试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:19', null, '成功');
INSERT INTO `t_log` VALUES ('ltMwH2F8KwOPSLniW89', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"接口日志\"，记录ID为jFw6PqlEfWqvjjyO9eW--__bvC5YemCdGmu0uje1co的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:22:03', null, '成功');
INSERT INTO `t_log` VALUES ('LugjGf1mAE3FvjwT0Ox', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为iT2sWETBcnkUdQztkgW--__FMt65zqIy94SOV1u4xO的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:58', null, '成功');
INSERT INTO `t_log` VALUES ('LuP6266cRT8PRVg9Ewl', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为3TYMy6KMBEalDCHKicd--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:13:31', null, '成功');
INSERT INTO `t_log` VALUES ('Lv5Kr9Pq2tltXNRDM0l', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:32:29', null, '成功');
INSERT INTO `t_log` VALUES ('lVhCVf1J8QIxWulGXjW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:46:03', null, '成功');
INSERT INTO `t_log` VALUES ('LvwZ3zBJ2EDMdvTrNaW', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:30:05', null, '成功');
INSERT INTO `t_log` VALUES ('lw8RTkDWawijpewR9tW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为OdDQrfZrjr6iWxt4lvz--__n1y54WQbTwfJ3TBM6dU的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:43:29', null, '成功');
INSERT INTO `t_log` VALUES ('lxy4ZT6byL8rIQxMcRc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:35:48', '170055574772200000', '成功');
INSERT INTO `t_log` VALUES ('lY2dLLnRSB8QnqTuCm2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:47:19', null, '成功');
INSERT INTO `t_log` VALUES ('lYMb2g6KOYF7u96XLIF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:29:56', '170013419569200000', '成功');
INSERT INTO `t_log` VALUES ('LyYQGD31aWbMj0ckzy5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:33:42', null, '成功');
INSERT INTO `t_log` VALUES ('lZg0QFvbvuoR7Uh4spU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"报销明细\"的视图上进行了新建操作', '新建', '192.168.32.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 02:01:24', null, '成功');
INSERT INTO `t_log` VALUES ('lzHjuUO8Qctrg50Ic9M', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"，记录ID为0SCelc1A1PN4h1AzkIl--__x22TfJ9GtTbbTM8CASB的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:17:55', null, '成功');
INSERT INTO `t_log` VALUES ('m2ZVwwCSlIEgPS5D7O2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程\"，记录ID为oEVhmBrgXFKQ0mwSjXb--__39g8WbWek4hssApD4LL的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:35:18', null, '成功');
INSERT INTO `t_log` VALUES ('M38FUzRnGGRMc6vWTTJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为2KYx3SihtUIq4R7NEPg--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:50:40', null, '成功');
INSERT INTO `t_log` VALUES ('m3H7r4vik91ec8ylert', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"质量管控\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:00:15', null, '成功');
INSERT INTO `t_log` VALUES ('M428uQjh7ptd8DPiQqY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试卷\"，记录ID为bHMnHnOKbMG3lQWyFUc--__i7s6XAFwa0Lrw21bdrf的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:03:12', null, '成功');
INSERT INTO `t_log` VALUES ('M46MPfsFBNlbpC8LHuq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"接口日志\"，记录ID为ivvBijI040aKUBIZN8t--__bvC5YemCdGmu0uje1co的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:32:55', null, '成功');
INSERT INTO `t_log` VALUES ('m7oiAaZjnPIsK92E5FW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:26:28', null, '成功');
INSERT INTO `t_log` VALUES ('M9O7OJ2IcXS0zRHDbLi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:45:29', null, '成功');
INSERT INTO `t_log` VALUES ('MaDiNHesz1SwgGFgMV5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:17:35', null, '成功');
INSERT INTO `t_log` VALUES ('maGMBsvFG17R3YzNNpg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:14:12', null, '成功');
INSERT INTO `t_log` VALUES ('mAswIxog4PSjCr2lI1P', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:59:34', null, '成功');
INSERT INTO `t_log` VALUES ('mbmSY2TGATVvs1qViSt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:37:25', '170054864526000000', '成功');
INSERT INTO `t_log` VALUES ('mBpHB43BGjIoAj3g4QD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"，记录ID为nVrvDH5mPG1WscvmBCz--__x22TfJ9GtTbbTM8CASB的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:17:45', null, '成功');
INSERT INTO `t_log` VALUES ('MEhe4L5dTl7XV6grfMn', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:10:56', null, '成功');
INSERT INTO `t_log` VALUES ('mEUSXICobq9J7ssMHDQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:04:10', null, '成功');
INSERT INTO `t_log` VALUES ('mEWDcQLm0oz7qwQfQD6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:18:02', null, '成功');
INSERT INTO `t_log` VALUES ('mGadqrRPS10t6GQsElQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"，记录ID为TSMeIGGiAESX0Wj1oUO--__5w1TpZZwkmeVLoGFxg2的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:36:31', null, '成功');
INSERT INTO `t_log` VALUES ('mHLl2QPW03q7PXxcIWp', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为gWUkDC4ggosYQEPcoqp--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:49:38', null, '成功');
INSERT INTO `t_log` VALUES ('mIAp0wEvCp4MIXPkLy6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了提交审批操作', '提交审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:41:30', null, '成功');
INSERT INTO `t_log` VALUES ('min4e2qvV0t8dd8Ze1C', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '登录', '登录', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:37:10', null, '成功');
INSERT INTO `t_log` VALUES ('mjIBAvKqKVuxM3UT0jT', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:16:11', null, '成功');
INSERT INTO `t_log` VALUES ('Mk2D1oBmH4EEYErk2SY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"，记录ID为cjVvedylbp23NDMOjZy--__IcNq6VwJJQbkyI0qnh4的表单上进行了保存并返回操作', '保存并返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:33:24', null, '成功');
INSERT INTO `t_log` VALUES ('MK5hLdSX2po6LT44pTN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为Z0bdJ6GZlg58XEd2ODv--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:15:01', null, '成功');
INSERT INTO `t_log` VALUES ('mKddsD9aXdcreFqBzEn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:45', null, '成功');
INSERT INTO `t_log` VALUES ('MKhg1pVbLjaMF8w2d7W', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为K6pyTtfHBIXE9MnXbJs--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:05:58', null, '成功');
INSERT INTO `t_log` VALUES ('mMD9hqzdBOoH7w0uIxv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:50:36', null, '成功');
INSERT INTO `t_log` VALUES ('MMm86WL4hgHOaZOJBbl', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为YDDtCpoMH9EUirPw6nR--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:35:53', null, '成功');
INSERT INTO `t_log` VALUES ('MMmqPcrPRZT0ADwkCxy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为bFkqp630F8MoDBUDw7g--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:48:42', null, '成功');
INSERT INTO `t_log` VALUES ('mmxkWTAKBMyl2MfYgPw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了导入操作', '导入', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:49:00', null, '成功');
INSERT INTO `t_log` VALUES ('mn2i8FuIBIu68cveIpL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工作报告日历视图查询\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:35:26', null, '成功');
INSERT INTO `t_log` VALUES ('MNvwkkvt3nJU35GfK1R', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:11:53', null, '成功');
INSERT INTO `t_log` VALUES ('MO14XIwjrBoPLmMyURM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"安全管控列表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:04:27', null, '成功');
INSERT INTO `t_log` VALUES ('Monmj5VyZtKKCjzE9jC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:11:39', null, '成功');
INSERT INTO `t_log` VALUES ('mOq2GILQHHFuclNImRc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为lcIbOaPLR7wQj8g4zEs--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:29:54', null, '成功');
INSERT INTO `t_log` VALUES ('mP4ga7jKwSqzhp70852', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为B6cTpWVg6jKUqmvABfW--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:08:31', null, '成功');
INSERT INTO `t_log` VALUES ('mPUrMcVSiD2QMdRMrwz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"计划用料表单\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:24:14', null, '成功');
INSERT INTO `t_log` VALUES ('mQMIGZK0G8EAGihZIa3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为FxR71qdFE5pjHA05M7R--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:02', null, '成功');
INSERT INTO `t_log` VALUES ('MR6T4nAvpb9jozUuBTx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:01:36', null, '成功');
INSERT INTO `t_log` VALUES ('mUQV1uFPZv2JHnumc4v', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为PalR3HEnZ1Lh75D0Wdq--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:44', null, '成功');
INSERT INTO `t_log` VALUES ('mww8jwfnqGqERJELBj1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为INoPMBWIuwjpvXuZIt0--__ojmQYrCnAvowW5SvtHj的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:27:39', null, '成功');
INSERT INTO `t_log` VALUES ('mxCX9TNGj09yC9khTB8', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '172.30.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 08:38:01', null, '成功');
INSERT INTO `t_log` VALUES ('MXUafp2ad3RxOEeOSuI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务\"，记录ID为G7jOZF3lrnMi1GHwGVZ--__pbW44DltlJN4N1vdppg的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:44:29', null, '成功');
INSERT INTO `t_log` VALUES ('mYL5TBalK7eGwuyCrUP', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:07', null, '成功');
INSERT INTO `t_log` VALUES ('MYR3H5k6OH5dTHjvAip', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:55:23', null, '成功');
INSERT INTO `t_log` VALUES ('mZ0uSvZxR2Bro2FONjF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"移交工序表单\"，记录ID为oz17YNuPcESq784CerK--__vCRHmSlzthRvQfmmJKt的表单上进行了确认操作', '确认', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:51:31', null, '成功');
INSERT INTO `t_log` VALUES ('MZnJqiSN1sCqP0ewsKK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目台账\"，记录ID为kgxw9K4Z6v0tpVJ0VxD--__DS5b6ibHccsFJm1jmgd的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:26:58', null, '成功');
INSERT INTO `t_log` VALUES ('n0yov0MgCszGmzoxTEr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:50', null, '成功');
INSERT INTO `t_log` VALUES ('N1I6wB36IejiOvygK6M', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:25', null, '成功');
INSERT INTO `t_log` VALUES ('N46V35XAtaYqeGAjD42', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:18:15', null, '成功');
INSERT INTO `t_log` VALUES ('n6k5Dlqk2j2ukbnATtA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:30', null, '成功');
INSERT INTO `t_log` VALUES ('n7TGFV9nIIgMIF8Aio2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为RYwX26uoEzrpjVqvihV--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:24', null, '成功');
INSERT INTO `t_log` VALUES ('n8ODoj4tgVzpAxaOzzS', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:14:27', null, '成功');
INSERT INTO `t_log` VALUES ('n99lpn1UPvTymGw6U5o', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为GJRT2OuEnJikWzdSs4Y--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:01:23', null, '成功');
INSERT INTO `t_log` VALUES ('nAbDLuHPHFunXcRrK0t', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"，记录ID为Kifo21mD510D8o9Vb2m--__IcNq6VwJJQbkyI0qnh4的表单上进行了保存并返回操作', '保存并返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:51:27', null, '成功');
INSERT INTO `t_log` VALUES ('naMp7GwVIKnyh01qil9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为GvWl9lZirjCclbqkuYr--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:03:53', null, '成功');
INSERT INTO `t_log` VALUES ('NcjQg46niG6P523R3cm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:49', null, '成功');
INSERT INTO `t_log` VALUES ('NcKLuievIXh7wGpOYZx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:56:19', null, '成功');
INSERT INTO `t_log` VALUES ('ndOq0vVLB076Tvboiin', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:09:30', null, '成功');
INSERT INTO `t_log` VALUES ('nEjoBDgcnYaNUhllhLR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"，记录ID为cLWV3gvWcIej6q8GSce--__vUEJS897NWxwBBRpl4K的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:05:52', null, '成功');
INSERT INTO `t_log` VALUES ('nf9nvX7LCf1j9ingyVT', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为bkngqRy6tSBEtSlxiqf--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:49:34', null, '成功');
INSERT INTO `t_log` VALUES ('nfx1pGTJsJJEKp2IsFW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:12:35', null, '成功');
INSERT INTO `t_log` VALUES ('NgbE2wlPZ1Alyrrf1Dt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为3CAX9ylZMKvDszWPvdS--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:40:59', null, '成功');
INSERT INTO `t_log` VALUES ('ngCH4ungaH9a9zyxTN5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为mnF2mpJfFXcICzLYATF--__26GUrdJFdllI3LIixHJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:15:35', null, '成功');
INSERT INTO `t_log` VALUES ('NHXRv3lPU7TiKIMXAI7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:13', null, '成功');
INSERT INTO `t_log` VALUES ('nIAKbuMsMHOnDtmSDHn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"阶段模板\"，记录ID为1p3sSQX1w8JaNFWzCAe--__SKQk1mvsTsRiI24iAd5的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:01:33', null, '成功');
INSERT INTO `t_log` VALUES ('nJ9xvraLpg7l2z3WumD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:12:23', null, '成功');
INSERT INTO `t_log` VALUES ('NJrbKUGRFCA6c99snXX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为C6DhRyKWUGSbRjvxTXD--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:04:49', null, '成功');
INSERT INTO `t_log` VALUES ('Nkmo72FaPMdeem34wOE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:47:45', null, '成功');
INSERT INTO `t_log` VALUES ('Nl4Eu2jMrjiozaM7hGc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:16', null, '成功');
INSERT INTO `t_log` VALUES ('NmbXF0QitFBdsJr5NJL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"安全管控\"，记录ID为v70NBBEPzpih8Z8DBvQ--__iGiSOpOIPVaWKuZB8Sm的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:05:14', null, '成功');
INSERT INTO `t_log` VALUES ('nME9hV0AjPnNT84w1d5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的考试\"的视图上进行了新建考试操作', '新建考试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:05:03', null, '成功');
INSERT INTO `t_log` VALUES ('nNSE8vDuDQ4svDxfHF4', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试卷\"，记录ID为BNaR2wS7Vi3obyjAae7--__i7s6XAFwa0Lrw21bdrf的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:04:15', null, '成功');
INSERT INTO `t_log` VALUES ('nNsTqvVrwGAKwwaHIzD', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:18:40', null, '成功');
INSERT INTO `t_log` VALUES ('nOkFzp2jh7aPmY8wP9t', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为SYqZVT9aHuJHqrSsMt4--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:14:19', null, '成功');
INSERT INTO `t_log` VALUES ('nPktiLBxl2R82ulNkbH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '视图-事件记录查询', '新建', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:03:41', null, null);
INSERT INTO `t_log` VALUES ('nRLoIJczirqA4HFeht1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:35:15', null, '成功');
INSERT INTO `t_log` VALUES ('nSN3ySg1TI1oOZQTeiF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为zSzoYMm34701sXXhkHU--__g0zLnKmg2lFtizVC3tH的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:38:19', null, '成功');
INSERT INTO `t_log` VALUES ('nTZmsUtF8KvXf5GsEwb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:23:58', null, '成功');
INSERT INTO `t_log` VALUES ('NUeJ6gtZnEJxk6auvs9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部项目立项单\"的视图上进行了Excel导入操作', 'Excel导入', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:24:12', null, '成功');
INSERT INTO `t_log` VALUES ('NW1Gyka8kWtaTQJ2Qbt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:14', null, '成功');
INSERT INTO `t_log` VALUES ('NWfmlqbftlQP8NTn51d', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为Z4sD3UpZOCHkcVaQQZW--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:26:06', null, '成功');
INSERT INTO `t_log` VALUES ('NXMhgc8vzDFnH2lAOCq', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:14:22', null, '成功');
INSERT INTO `t_log` VALUES ('nxvZ1nmcIdpviznYqXn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"接口日志\"，记录ID为HCZqU1AuKwtRJ0j5D6E--__bvC5YemCdGmu0uje1co的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:31:46', null, '成功');
INSERT INTO `t_log` VALUES ('nZauEgcjkvySY07JKyw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"，记录ID为aHqGlnl0w8k5yLVbc0G--__eDQsYDSRMWfSCYSb02M的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:53:49', null, '成功');
INSERT INTO `t_log` VALUES ('nzKfU6LPXlHniCWVnzM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为iK3Gnxzy6cCVBG4o6tI--__4uRrLT7T87sJmdbRinQ的表单上进行了测试操作', '测试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:07', null, '成功');
INSERT INTO `t_log` VALUES ('O29DKrzOdbCTCHpt2g9', 'crzTJNyZNpf9l62jxWG', 'zhangsan(张三)', 'zhangsan（张三）在名称为\"项目立项单\"的视图上进行了批量提交操作', '批量提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:58:14', null, '成功');
INSERT INTO `t_log` VALUES ('O2jAed20TYkajxEHj7B', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:47:14', null, '成功');
INSERT INTO `t_log` VALUES ('o4YRcQgx717l95ekZo7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:30:24', null, '成功');
INSERT INTO `t_log` VALUES ('O4z1WSqxmESAvjYK2UD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为00auRShuqwKAL04iP4o--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:13:13', null, '成功');
INSERT INTO `t_log` VALUES ('O5HDa9inNQ9zp7w3v7c', 'Ai6hllhNjS2ull9TKGb', 'admin(Admin)', '添加软件失败', '添加软件', '172.26.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 11:13:03', null, '失败');
INSERT INTO `t_log` VALUES ('O6q30gAmSU3AEli0uTV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:48:28', null, '成功');
INSERT INTO `t_log` VALUES ('o7OHdoHg2PrLf3wh2vI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:27:55', null, '成功');
INSERT INTO `t_log` VALUES ('o7uFavfl2cP5FEdruwi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为sbhbLKlhNKFLzLrsO9A--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:19:43', null, '成功');
INSERT INTO `t_log` VALUES ('Oa3Yv53qbC6KzLC6t3s', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为JSrZqsQPvEsiOGEFgI4--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:44:10', null, '成功');
INSERT INTO `t_log` VALUES ('OBUfMghM5pdCUMwRgiU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:00:54', null, '成功');
INSERT INTO `t_log` VALUES ('OE60wRgWLLu4ugUqyl6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为RYwX26uoEzrpjVqvihV--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:45:42', null, '成功');
INSERT INTO `t_log` VALUES ('oee2I8ThTyqSqctXI0x', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为gzT2jRzYBY73BxFLai1--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:45:02', null, '成功');
INSERT INTO `t_log` VALUES ('oeQz45lwyF3VQUJ3OMW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"相对方记录表\"的视图上进行了新建操作', '新建', '172.28.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 01:51:42', null, '成功');
INSERT INTO `t_log` VALUES ('OEvalwFl3OThYKUNtHH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:39', null, '成功');
INSERT INTO `t_log` VALUES ('oeZ1kyFWVLzyPase3YW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售出库\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:39', null, '成功');
INSERT INTO `t_log` VALUES ('oG7AIA6KQ0awQPM4IHo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为3UHgX3UcIMhjvmgTsGo--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:50:18', null, '成功');
INSERT INTO `t_log` VALUES ('OGC3Ugas3PRI7nA2gvq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为j9wjIjL0zSzoaOpG7VC--__n1y54WQbTwfJ3TBM6dU的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:47:45', null, '成功');
INSERT INTO `t_log` VALUES ('OGdm2iWNxDRodm7SE7a', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:33:43', null, '成功');
INSERT INTO `t_log` VALUES ('OgO6uFTAwYjyod7zj2i', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"，记录ID为KFcsYaFb7NWO0RJRnon--__BOaTHF5cz04VHBL4fW1的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:30:30', null, '成功');
INSERT INTO `t_log` VALUES ('oh6VkFnNfDh7LIProqN', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:11:29', null, '成功');
INSERT INTO `t_log` VALUES ('OHnX4zukFvEyPviPDMM', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:32', null, '成功');
INSERT INTO `t_log` VALUES ('oI6JVFhtXa4x4HMxnDV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:10', null, '成功');
INSERT INTO `t_log` VALUES ('OIkUo6jgo5a9C1VM9Xx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为vtE86OqBaTNxrxxbNRS--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:34', null, '成功');
INSERT INTO `t_log` VALUES ('oKhR4av48P0h4vo2ao6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"质量管控\"，记录ID为94RZfzrnLDS858KCfOe--__itFXiGoMoAAARgTKvxI的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:01:18', null, '成功');
INSERT INTO `t_log` VALUES ('Olo9Pj0GgMR6rQV0SQm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:21', null, '成功');
INSERT INTO `t_log` VALUES ('omSTgAdmZH5q0Y8rbG5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"，记录ID为sxRyqtK7hzxxU0rwKhM--__x22TfJ9GtTbbTM8CASB的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:18:05', null, '成功');
INSERT INTO `t_log` VALUES ('on92PAEPqPEuwGW8Sj1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:11:02', null, '成功');
INSERT INTO `t_log` VALUES ('oNCjMiZdoxqiQyTQatZ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库\"，记录ID为oTY29aZRyLX4JioCSxb--__XNbVhiZpvcGxu6TwrmY的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:54:31', null, '成功');
INSERT INTO `t_log` VALUES ('oNw4GKRkLeZun5AYHIg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为zjDCf6jVTzdiGGC1hAd--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:38:06', null, '成功');
INSERT INTO `t_log` VALUES ('oObnBs8Or8UjXxA1YhB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为yFfwhVcBUXhIOmQMSG3--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:43', null, '成功');
INSERT INTO `t_log` VALUES ('OoUhtytRWgJxMm9GuwD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为d85qQ6PWVktt2Gpede6--__4uRrLT7T87sJmdbRinQ的表单上进行了测试操作', '测试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:52', null, '成功');
INSERT INTO `t_log` VALUES ('Op95RHaknX2a3nO9X4O', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:42:04', null, '成功');
INSERT INTO `t_log` VALUES ('OpCbPAR3VNxz0JMqkRh', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:39', null, '成功');
INSERT INTO `t_log` VALUES ('OPfsKslKTkJxEM820aO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:17:34', null, '成功');
INSERT INTO `t_log` VALUES ('opu8YlTAhw9dS8EmV2d', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为3CAX9ylZMKvDszWPvdS--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:31:04', null, '成功');
INSERT INTO `t_log` VALUES ('OuPQdwyJuAan5RqN17A', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"，记录ID为biqiGXMkRvVs98QjPDG--__iCJiJYtjVW5ucmIROTr的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:14', null, '成功');
INSERT INTO `t_log` VALUES ('ovbZCVSRkCrnickNN1b', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为YfqubOyQlSytyGfrxMZ--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:13', null, '成功');
INSERT INTO `t_log` VALUES ('ovvriwRXAPTsO0ie1qh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为JtXtiNDcCr9VOcv9IfX--__FMt65zqIy94SOV1u4xO的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:44', null, '成功');
INSERT INTO `t_log` VALUES ('Owwnun02V7gZB5PafnL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"，记录ID为Im4CC2jkPHqm7kJpAGu--__s1mJQbXZGLzlWWKKqod的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:41:40', null, '成功');
INSERT INTO `t_log` VALUES ('OX5ww7fvVCUrOgAdDoc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为WoEZRWxFlHv8MS1yQDz--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:48:02', null, '成功');
INSERT INTO `t_log` VALUES ('OxqTxBz1TCGIU07SZH9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目类型\"，记录ID为DFLjhmovzYzTFNY06Nc--__ADikv8WY0uDsdRBadjO的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:19:21', null, '成功');
INSERT INTO `t_log` VALUES ('Oy8PL6Bp1NVxyl5FVgd', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.21.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-14 14:50:10', '169997341048900000', '成功');
INSERT INTO `t_log` VALUES ('ozs41kyWGUv1qV6LUML', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"安全管控\"，记录ID为dzAkoDBbOIBs8OzDYym--__iGiSOpOIPVaWKuZB8Sm的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:51:20', null, '成功');
INSERT INTO `t_log` VALUES ('p28AsGpZaTTHdFWm6lY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为7xziggjDsFgHUaITDIH--__FMt65zqIy94SOV1u4xO的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:03', null, '成功');
INSERT INTO `t_log` VALUES ('p3KRwpTOsV200hjlTa2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为31l0Mbztp3zjvMNFsce--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:34', null, '成功');
INSERT INTO `t_log` VALUES ('p6cjgrjfQP9wrZdFlQU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为6WDU80T9yEl2t07pIVW--__26GUrdJFdllI3LIixHJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:15:12', null, '成功');
INSERT INTO `t_log` VALUES ('P8GvIUOeStitHbWp6xn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"通用主数据\"的视图上进行了新建操作', '新建', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:35:09', null, '成功');
INSERT INTO `t_log` VALUES ('p9nFsMsBzV3GX0VTroQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:43:02', null, '成功');
INSERT INTO `t_log` VALUES ('PAdZhtZRCufD2MWVFDe', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:34', null, '成功');
INSERT INTO `t_log` VALUES ('PAo68DEB5MvV3yrpaeb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"报销明细\"的视图上进行了新建操作', '新建', '192.168.32.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 02:00:36', null, '成功');
INSERT INTO `t_log` VALUES ('PAVw32MbpS8qGFWICrL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"系统主数据\"，记录ID为NlYHkuolFz3N8tIQT4z--__0yq9gkc0WDszfrE5g3z的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:16:25', null, '成功');
INSERT INTO `t_log` VALUES ('Pc2tHqXMI4pGhPmFmv2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"的视图上进行了新增操作', '新增', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 04:02:35', null, '成功');
INSERT INTO `t_log` VALUES ('PCOw3fl3kskhBKzPf22', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:06', null, '成功');
INSERT INTO `t_log` VALUES ('PDBUPZWamzSfRMzHpE6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为CXOYVQcimVsoJofgrBl--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:59:09', null, '成功');
INSERT INTO `t_log` VALUES ('pdtYrk6wM2PxctJWfXP', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为XTv5eJR5Tzmb6QBnSKm--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:03:14', null, '成功');
INSERT INTO `t_log` VALUES ('PF27VucTTfY8KvJX9Sz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:04:50', null, '成功');
INSERT INTO `t_log` VALUES ('PfdhuwWUFjOqcknoBfE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为qmPvTEhTSQ8H61QnqIh--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:49:04', null, '成功');
INSERT INTO `t_log` VALUES ('PFZxRaNFsg7qzcaggJy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为yFfwhVcBUXhIOmQMSG3--__HNVQplRqvUjt3oYLr2S的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:42', null, '成功');
INSERT INTO `t_log` VALUES ('phHM7nV8IzLE4y8xdXe', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:47:10', null, '成功');
INSERT INTO `t_log` VALUES ('PHt0ZEyNT3MjHNuqi6g', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"的视图上进行了新增操作', '新增', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:38:29', null, '成功');
INSERT INTO `t_log` VALUES ('PI0G5rMdTANvSS4eCYg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:20:32', null, '成功');
INSERT INTO `t_log` VALUES ('PIo52KzPabsIEL5LakH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:01:45', null, '成功');
INSERT INTO `t_log` VALUES ('PjdBPuzacte6BuaeKbR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:47:51', null, '成功');
INSERT INTO `t_log` VALUES ('pJN49m2PZScsmjAH5a1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试\"，记录ID为bGKYX0nwkGWq1huiDuU--__gBl5P5h53gNsqkhGL4b的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:05:01', null, '成功');
INSERT INTO `t_log` VALUES ('pjT2ZhW9NR5Gb74p9ft', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"，记录ID为pSEeFPPbwa0iOfHZCoH--__Vt7h4bgyjQXp8FUN9Mz的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:21', null, '成功');
INSERT INTO `t_log` VALUES ('PkbeuuFAg5eSDE4rxtR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为VbD5FU0c6DmmRf6k3Nc--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:06:18', null, '成功');
INSERT INTO `t_log` VALUES ('pKdO9ygXCZUlwoeFbtR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:46:24', null, '成功');
INSERT INTO `t_log` VALUES ('Pl1kl0GqRUi3gRoQZpI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为szCluKxF1FytmXn7qvH--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:45', null, '成功');
INSERT INTO `t_log` VALUES ('pnesapn1syKC69orXps', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:04:28', null, '成功');
INSERT INTO `t_log` VALUES ('PNvBXPAkzpy8yKs6t6I', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:35:29', null, '成功');
INSERT INTO `t_log` VALUES ('pPJOfsDkGeDeXwm5RA1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为WUWrj6uSb3EBhmK4CNF--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:47:15', null, '成功');
INSERT INTO `t_log` VALUES ('PQK0Fk05qtjwqt8j0Uq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:14:25', '170061566499800000', '成功');
INSERT INTO `t_log` VALUES ('pQy8mBFkzyXopLLRC2R', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:08:08', null, '成功');
INSERT INTO `t_log` VALUES ('PSFJHlBOolcUBhINzk3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为qzXgVdGEY30UvEUbxfU--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:15', null, '成功');
INSERT INTO `t_log` VALUES ('pT5dMZQBvxxlFHbHnou', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:24', null, '成功');
INSERT INTO `t_log` VALUES ('pTa2RCJ7OiJoGtkZ6L0', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:51', null, '成功');
INSERT INTO `t_log` VALUES ('ptmflkysAiN22tZXtyA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:13', null, '成功');
INSERT INTO `t_log` VALUES ('PuGVbjk3hX0tMyeYd0p', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为VbD5FU0c6DmmRf6k3Nc--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:06:21', null, '成功');
INSERT INTO `t_log` VALUES ('PuP6tm8Pdxaq73fdiCY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:46:59', null, '成功');
INSERT INTO `t_log` VALUES ('puRpiL1MzzQIbwS4hi6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:50:57', null, '成功');
INSERT INTO `t_log` VALUES ('puTgviTBXgBnuto5uV7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"，记录ID为m7jvIAslh28mmH1Wjg7--__BOaTHF5cz04VHBL4fW1的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:15:06', null, '成功');
INSERT INTO `t_log` VALUES ('PvPxN1pjcDnP4b7rUcs', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:02:54', null, '成功');
INSERT INTO `t_log` VALUES ('PvZIlIhwaUrrSXbvwCA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:44', null, '成功');
INSERT INTO `t_log` VALUES ('pXJJSJ5ad3IFo0xfYVm', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:55:15', null, '成功');
INSERT INTO `t_log` VALUES ('pY49Cov7dbgx4RYeRYL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"，记录ID为CwM8TxSV9PVkMyZTie5--__iCJiJYtjVW5ucmIROTr的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:18:53', null, '成功');
INSERT INTO `t_log` VALUES ('PyDISzgehyqEevXiCDi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:53:06', null, '成功');
INSERT INTO `t_log` VALUES ('PzJFJDmfzzk3YVvRLFx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了批量提交操作', '批量提交', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:51:01', null, '成功');
INSERT INTO `t_log` VALUES ('Q2MhPijMSMLnxeng3mQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为qzXgVdGEY30UvEUbxfU--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:18:38', null, '成功');
INSERT INTO `t_log` VALUES ('q8BKl8Ehj9fsPdlehGb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:54:55', '170056049496600000', '成功');
INSERT INTO `t_log` VALUES ('Q9Vekij2qBd29nVrq5t', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为lcIbOaPLR7wQj8g4zEs--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:29:58', null, '成功');
INSERT INTO `t_log` VALUES ('QAfzoH5Pm8RviUkSTLU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为GXfLV16cHxeoUfIJXKd--__wCZJ07qTQjC8ai29f4f的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:26:32', null, '成功');
INSERT INTO `t_log` VALUES ('QBNFjBxDjvHFh2PWfNk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为e6XgNWvqrnEuq0Quzss--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:06:59', null, '成功');
INSERT INTO `t_log` VALUES ('qcaJqPI2EOC2yFII5Ah', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 05:55:38', '170020053755300000', '成功');
INSERT INTO `t_log` VALUES ('QdlT2XoP2d4cuXZ6tIc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:22', null, '成功');
INSERT INTO `t_log` VALUES ('QdvR74smcSpDt5AT1WC', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）更新了admin1（系统管理员）的角色信息', '更新用户', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 04:17:45', null, '成功');
INSERT INTO `t_log` VALUES ('Qesv24YKi1b6GcsXbvD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"，记录ID为BbYGCMjl9O4ndrlxq6F--__eDQsYDSRMWfSCYSb02M的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:51:34', null, '成功');
INSERT INTO `t_log` VALUES ('QfNI7QQPtEJtFOvrvBY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为Z4sD3UpZOCHkcVaQQZW--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:25:22', null, '成功');
INSERT INTO `t_log` VALUES ('qhgMlwIHKhctOsCOdJK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工作任务单\"，记录ID为MmIiHArkp2RRiDzH3P5--__TTHf4AYAnvx6pm5kw9j的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:52:10', null, '成功');
INSERT INTO `t_log` VALUES ('QIqNYGbIQE5OvEoKpUk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为3UHgX3UcIMhjvmgTsGo--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:50:19', null, '成功');
INSERT INTO `t_log` VALUES ('QjGyGVZn0TS6eg6oaiK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了Excel导入操作', 'Excel导入', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:09:32', null, '成功');
INSERT INTO `t_log` VALUES ('qJYTEFyLxF4fHvzDuX5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"，记录ID为lDxVREqooiiltv74muo--__oZjaXGW0FfpkzFyFUSo的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:30:09', null, '成功');
INSERT INTO `t_log` VALUES ('Qk461NYEqvNpnKDExj5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为iK3Gnxzy6cCVBG4o6tI--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:05:28', null, '成功');
INSERT INTO `t_log` VALUES ('QkgglMtd3hSgyYKaIbI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:19:06', null, '成功');
INSERT INTO `t_log` VALUES ('QkYyEoqqrdkVmZKuUWh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:49:43', null, '成功');
INSERT INTO `t_log` VALUES ('qmTygkqMXGZWo6uArRU', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:45', null, '成功');
INSERT INTO `t_log` VALUES ('QmYA7domV1ultB7A9u5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:13:25', null, '成功');
INSERT INTO `t_log` VALUES ('QNdqWFwxGlIpOdzyq6J', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:30', null, '成功');
INSERT INTO `t_log` VALUES ('QO9cNhrlLXHvKR7a4Xp', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:17:10', null, '成功');
INSERT INTO `t_log` VALUES ('QOA4qlJXEzIi5vxW90l', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库试题\"的视图上进行了新建试题操作', '新建试题', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:54:54', null, '成功');
INSERT INTO `t_log` VALUES ('QOeilbuAKhP246YIKFg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为GGaY18wErvMzyQHvFPV--__ojmQYrCnAvowW5SvtHj的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:29', null, '成功');
INSERT INTO `t_log` VALUES ('Qp1dl6euiQDhoPmGHkx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的题库\"的视图上进行了新建题库操作', '新建题库', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:37:45', null, '成功');
INSERT INTO `t_log` VALUES ('QR2Zl73kqXYm8GI1ZEJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"的视图上进行了新增操作', '新增', '192.168.32.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 01:58:53', null, '成功');
INSERT INTO `t_log` VALUES ('QS9Yj1u5yZhcsUMe6eA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为prajS2djiCkowB9nZRZ--__26GUrdJFdllI3LIixHJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:14:47', null, '成功');
INSERT INTO `t_log` VALUES ('QTpPmbcZ2DQmN6Iova0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为TvNNE79n59GoUfwojJm--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:48:12', null, '成功');
INSERT INTO `t_log` VALUES ('Qtxqj4KWmAM8r2rukxP', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"，记录ID为jx07lh2QtLfZGsZgHoD--__Vt7h4bgyjQXp8FUN9Mz的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:09', null, '成功');
INSERT INTO `t_log` VALUES ('QUrxkQjS0rTbOCBHnWn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:31:17', null, '成功');
INSERT INTO `t_log` VALUES ('qVf8TE1lKo8sN0wuitU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为gzT2jRzYBY73BxFLai1--__wCZJ07qTQjC8ai29f4f的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:44:18', null, '成功');
INSERT INTO `t_log` VALUES ('QwL7ipL5SrE3yghxJZ1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为iK3Gnxzy6cCVBG4o6tI--__4uRrLT7T87sJmdbRinQ的表单上进行了测试操作', '测试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:12', null, '成功');
INSERT INTO `t_log` VALUES ('qwlzq7LCZqkDMyKIP7H', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"移交工序表单\"，记录ID为cvgHdocNUAu5qWTf4X5--__vCRHmSlzthRvQfmmJKt的表单上进行了确认操作', '确认', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:52:58', null, '成功');
INSERT INTO `t_log` VALUES ('QXGI1DUQZAzkLwGNd3M', 'Ai6hllhNjS2ull9TKGb', 'admin(Admin)', '添加软件失败', '添加软件', '172.24.0.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 10:28:28', null, '失败');
INSERT INTO `t_log` VALUES ('Qxjpviw0hEcIavAOH3p', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的题库\"的视图上进行了新建题库操作', '新建题库', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:53:12', null, '成功');
INSERT INTO `t_log` VALUES ('qyLy3dlqZeUAAIwJyKj', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为2KYx3SihtUIq4R7NEPg--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:51:53', null, '成功');
INSERT INTO `t_log` VALUES ('QzbxkBW70vb7XAUOkfj', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '视图-事件记录查询', '新建', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:32', null, null);
INSERT INTO `t_log` VALUES ('qzLfIYfsBaqeQ2T5Q7k', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:35:59', null, '成功');
INSERT INTO `t_log` VALUES ('R0Pn5x6NT1vjOtOlk2s', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:51:24', null, '成功');
INSERT INTO `t_log` VALUES ('R17wcymQNSgzXGXdYiN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ymdd7hbh4M4ncBXnvb9--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:02', null, '成功');
INSERT INTO `t_log` VALUES ('R1RJFpoBgzDA5w0fwz1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为v5Cis9zD6ttroiwtBru--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:51:43', null, '成功');
INSERT INTO `t_log` VALUES ('R2pUDtv6m93YulV6lMy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.30.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 08:39:24', '170012396395500000', '成功');
INSERT INTO `t_log` VALUES ('r5BY7bZtpe738txcNSQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:50:26', null, '成功');
INSERT INTO `t_log` VALUES ('RbFfgDmPIwF613AGzHq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.28.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 01:50:42', '170009944231400000', '成功');
INSERT INTO `t_log` VALUES ('rbVsUG1Gd1LfLWtTwv9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款单\"，记录ID为WFOC6uYbBwXEeYLPEIw--__OA4RH8BeqL1bxI71F2W的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:13:18', null, '成功');
INSERT INTO `t_log` VALUES ('RcCMLuiv1F8fs483XIH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:56:38', '170054619782000000', '成功');
INSERT INTO `t_log` VALUES ('RF0gHUNs4V7p4XSQ2Nx', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:55:30', null, '成功');
INSERT INTO `t_log` VALUES ('Rg0Xmnmmk5eEJdDiFAv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-GeneralApplication-iNF0eKCIveExMFYCmDb--__KUVqdHRmJ5NsJE8KuRt', '返回', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 19:53:53', null, null);
INSERT INTO `t_log` VALUES ('Rg7AeGTmqLvogflQN1l', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试\"，记录ID为bGKYX0nwkGWq1huiDuU--__gBl5P5h53gNsqkhGL4b的表单上进行了发布操作', '发布', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:04:59', null, '成功');
INSERT INTO `t_log` VALUES ('RHuyrm84SjmbZUSYb60', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为4RIogGObv5LjNQcTDfe--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:13:41', null, '成功');
INSERT INTO `t_log` VALUES ('rjXvpCTi2vX6T9Kkbgo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.240.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 09:28:42', '170064532229400000', '成功');
INSERT INTO `t_log` VALUES ('RL0LBi872JkjWdDcEQ3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为EehSVkd6UveIj8sWwBb--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:07:10', null, '成功');
INSERT INTO `t_log` VALUES ('rl0UBw8ALJwZA2S1Tpe', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:33:27', null, '成功');
INSERT INTO `t_log` VALUES ('rL5YdhYlTSdvPo8cHJk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了创建工序操作', '创建工序', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:33:39', null, '成功');
INSERT INTO `t_log` VALUES ('Rl97mawo9Ipv2GoGfcX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:19:13', null, '成功');
INSERT INTO `t_log` VALUES ('RlbGZJHyxQJTGGLv5uw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:56:49', null, '成功');
INSERT INTO `t_log` VALUES ('RMcRshY6Wxpv4PpTohD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"题库\"，记录ID为oTY29aZRyLX4JioCSxb--__XNbVhiZpvcGxu6TwrmY的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:54:32', null, '成功');
INSERT INTO `t_log` VALUES ('rMg1sIGc2DVt07udz1c', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:47:05', null, '成功');
INSERT INTO `t_log` VALUES ('rMkT5pJ1U7HHVFz231j', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为d85qQ6PWVktt2Gpede6--__4uRrLT7T87sJmdbRinQ的表单上进行了测试操作', '测试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:35:38', null, '成功');
INSERT INTO `t_log` VALUES ('RMzVaQ3pyPor8l6sXKg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为HWKyG2r09nV5UT9kitf--__g9yXfu7GqVPgW3ZOkeB的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:53:39', null, '成功');
INSERT INTO `t_log` VALUES ('RNcYoKfzdNgAE351f7J', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为ButCsC7nh7TtqjRZ230--__26GUrdJFdllI3LIixHJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:12:32', null, '成功');
INSERT INTO `t_log` VALUES ('RnHg9Z0TVMBoZ4ZOqbq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为E7Bsu0zlb9XmbRkRBlS--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:49:22', null, '成功');
INSERT INTO `t_log` VALUES ('roVXLLSUMHRw03Y8O45', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:41:16', null, '成功');
INSERT INTO `t_log` VALUES ('rPPL4Le3BObVQdd5m5n', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:18:03', '170053308279500000', '成功');
INSERT INTO `t_log` VALUES ('RriV72aJEDSj9CfFNHx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:06', null, '成功');
INSERT INTO `t_log` VALUES ('RT4YIVUlV0Dv51gf8gN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"的视图上进行了删除操作', '删除', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:35:57', null, '成功');
INSERT INTO `t_log` VALUES ('Rtc9Sl2GBgwzuCdjI1B', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:57:13', null, '成功');
INSERT INTO `t_log` VALUES ('RtJuHmLtzKziC81wt84', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"通用主数据\"，记录ID为PEMHPyofnvrMVD12803--__YKQGrRTMGeqRoKzd8td的表单上进行了返回操作', '返回', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:35:29', null, '成功');
INSERT INTO `t_log` VALUES ('rtQcRislCAHtwA53Vm4', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"，记录ID为sxRyqtK7hzxxU0rwKhM--__x22TfJ9GtTbbTM8CASB的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:18:04', null, '成功');
INSERT INTO `t_log` VALUES ('RVxZ8ZDL9vOaGGMJblA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:18:43', null, '成功');
INSERT INTO `t_log` VALUES ('rx1G5VZ8MBOFJ5B9qyW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为SarwRJilY68zbZt8oXa--__g9yXfu7GqVPgW3ZOkeB的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:52:20', null, '成功');
INSERT INTO `t_log` VALUES ('rxBUnwqzsP2J8eISdFO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为SZJHLCvTeqiKIH80zAU--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:30', null, '成功');
INSERT INTO `t_log` VALUES ('RxC5gg8KiJ1lwHwHMIw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程\"，记录ID为wTOgqywfhLPxe8Xa5vs--__39g8WbWek4hssApD4LL的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:26:34', null, '成功');
INSERT INTO `t_log` VALUES ('RyQz839kOnRQ0bl0mPg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类型\"，记录ID为CwM8TxSV9PVkMyZTie5--__iCJiJYtjVW5ucmIROTr的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:18:53', null, '成功');
INSERT INTO `t_log` VALUES ('RZUC33GATaoxYQDpRms', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的试卷\"的视图上进行了新建试卷操作', '新建试卷', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:02:14', null, '成功');
INSERT INTO `t_log` VALUES ('S3IRTrnJiH09a7FoC09', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为blyycnRSBe6XtK8jGwt--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:02', null, '成功');
INSERT INTO `t_log` VALUES ('SAnFupeezD9pAfgz304', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:53', null, '成功');
INSERT INTO `t_log` VALUES ('SbskI7PleL5of3xxCwG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"事件记录表\"，记录ID为xBOUHJhlo7gKttJ6wip--__qGyDZsLMuZ0J4FSlRvu的表单上进行了取消操作', '取消', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:13:25', null, '成功');
INSERT INTO `t_log` VALUES ('Scyw9qWGAs2OB96OxN8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:58', null, '成功');
INSERT INTO `t_log` VALUES ('SEkRkjl2VPcEGKi9Liv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:51:36', null, '成功');
INSERT INTO `t_log` VALUES ('SfbtXfdKMKZprej4DzC', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:52', null, '成功');
INSERT INTO `t_log` VALUES ('SgbRZ0ZJQOhjlAT7wGT', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:09:31', null, '成功');
INSERT INTO `t_log` VALUES ('Sgp6SlIo4LfGtsBbhFC', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:55:26', null, '成功');
INSERT INTO `t_log` VALUES ('sgWGBM0WKnhsQHQkxlj', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:11', null, '成功');
INSERT INTO `t_log` VALUES ('Shlq3iCV0RCZRUr0evZ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:46:06', null, '成功');
INSERT INTO `t_log` VALUES ('SjSJnkqtvCvKCupMLI5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为skOaaAl7PgHXVl05JRN--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:59:40', null, '成功');
INSERT INTO `t_log` VALUES ('sjxAk6fwtiAm0kW26Jv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为cf5EwXATzDprR5TIQZX--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:44:29', null, '成功');
INSERT INTO `t_log` VALUES ('SkMunvRMMntIyZjRbuv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为2KYx3SihtUIq4R7NEPg--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:51:49', null, '成功');
INSERT INTO `t_log` VALUES ('SOQgzn3XSFd8HIoAcBt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购申请\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:12:28', null, '成功');
INSERT INTO `t_log` VALUES ('SOtO7d2p8aCv7T43fNd', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为5AdHbrTXMCRa9rJfKiz--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:28', null, '成功');
INSERT INTO `t_log` VALUES ('SPCxSYgpmIgCF2jX7iw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:41:00', null, '成功');
INSERT INTO `t_log` VALUES ('SPGR8TC90wagypxyFKb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UV9i9vMOyVsmFTLOXUM--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:48:46', null, '成功');
INSERT INTO `t_log` VALUES ('ssL2psdXY3cjLnaG1BC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:00:20', null, '成功');
INSERT INTO `t_log` VALUES ('SSTMQqau0Jgi8DVi0bE', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为aORWP7nSMSGitMhWAvb--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:58', null, '成功');
INSERT INTO `t_log` VALUES ('ssVmZSsx9m4NhLuOMAQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:01:28', null, '成功');
INSERT INTO `t_log` VALUES ('Stiltd4PrBlVuOEQgTg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 12:22:26', '170013734551400000', '成功');
INSERT INTO `t_log` VALUES ('sTV6aB6YZmu3HkwQqAw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售出库\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:11:07', null, '成功');
INSERT INTO `t_log` VALUES ('suokronAZAcP0Q5jixp', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:38:23', '170054870345600000', '成功');
INSERT INTO `t_log` VALUES ('swGJfds53dK16yUHTeC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为YrdZIc525ZBz8ySQ2CN--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 04:01:51', null, '成功');
INSERT INTO `t_log` VALUES ('sWiORLWZeTrqhQX0DzJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为dTj1VXe3tgBX9FZ9X1c--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:55:03', null, '成功');
INSERT INTO `t_log` VALUES ('SYyA9lG85Lz3rgE4PWQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:08:00', null, '成功');
INSERT INTO `t_log` VALUES ('SzIFgeqqUdCjRs3Vmhm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:44:09', null, '成功');
INSERT INTO `t_log` VALUES ('SZJEc2HOP2J0Ia0RnUJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"事件记录查询\"的视图上进行了新建操作', '新建', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:13:21', null, '成功');
INSERT INTO `t_log` VALUES ('SzQ1ktrzkmqsDDC7kWr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为HDgYHM4q3i1gHWDE5O9--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:07:20', null, '成功');
INSERT INTO `t_log` VALUES ('T1xXEU944vkt9ZpehBc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:47', null, '成功');
INSERT INTO `t_log` VALUES ('T4NeqRO58GWQHwM7Agu', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:23:46', null, '成功');
INSERT INTO `t_log` VALUES ('t9qkP88f2iSEMBhGDhF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为GGaY18wErvMzyQHvFPV--__ojmQYrCnAvowW5SvtHj的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:29', null, '成功');
INSERT INTO `t_log` VALUES ('TbReQKO5FwGHyZ57Dku', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为mwAuJkWmwDIsPJENM0i--__FMt65zqIy94SOV1u4xO的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:51', null, '成功');
INSERT INTO `t_log` VALUES ('TCD16dRuHEZu3sT6AiR', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.240.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 05:58:39', '170063271880000000', '成功');
INSERT INTO `t_log` VALUES ('TcOZrSpk7ALsJVPLQZE', 'crzTJNyZNpf9l62jxWG', 'zhangsan(张三)', 'zhangsan（张三）进行系统登录操作', '登录', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:12:48', '170061556804600000', '成功');
INSERT INTO `t_log` VALUES ('tDqtumbRPp4nY9pjTmj', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款单\"，记录ID为bWudvL0lnG6wQxmZiPf--__OA4RH8BeqL1bxI71F2W的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:01:37', null, '成功');
INSERT INTO `t_log` VALUES ('ThdJ7FD8DRiVe4Sv9Tt', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目类型\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:23:19', null, '成功');
INSERT INTO `t_log` VALUES ('TikAKxxn6VVaupEfYPA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为6lWBh5GamN9b0GjHI2k--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:35:51', null, '成功');
INSERT INTO `t_log` VALUES ('TJJGY8RLs9woI1gQbXa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"的视图上进行了导出操作', '导出', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:50', null, '成功');
INSERT INTO `t_log` VALUES ('tJKW4sfNYTSrGnRm8yi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:39:52', null, '成功');
INSERT INTO `t_log` VALUES ('tJQO538vLhUzCKpkBQO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"的视图上进行了新增操作', '新增', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:36:47', null, '成功');
INSERT INTO `t_log` VALUES ('tjvT7Ho0h3Op6YLlN8D', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:46:08', null, '成功');
INSERT INTO `t_log` VALUES ('tK1TOGrw6c5pNFa3qhK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部工作任务单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:28:56', null, '成功');
INSERT INTO `t_log` VALUES ('TkegryAmzLjpqrodrwn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为iT2sWETBcnkUdQztkgW--__FMt65zqIy94SOV1u4xO的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:08', null, '成功');
INSERT INTO `t_log` VALUES ('TKnSmlZmyPleaVyh7DW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ymdd7hbh4M4ncBXnvb9--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:30', null, '成功');
INSERT INTO `t_log` VALUES ('TM9o7T2cmhFoOLO4dPo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为Ap2y5zvkgBXnYGrb96z--__YJuLxgj7c3mjCJFF8nF的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:51:14', null, '成功');
INSERT INTO `t_log` VALUES ('tMjMTWjDp74r8PcjSdC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:44:06', null, '成功');
INSERT INTO `t_log` VALUES ('tMsVvsv8cGNTjeP3heA', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.28.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:22:48', '170010496833900000', '成功');
INSERT INTO `t_log` VALUES ('tnyptsHEYCAvD5mgoB9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为TMgFdLQXGjvNTqy3nNE--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:23:13', null, '成功');
INSERT INTO `t_log` VALUES ('to4EZAs5Z8xahYZmNTl', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统注销操作', '注销', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:56:18', null, '成功');
INSERT INTO `t_log` VALUES ('TTd5SHY7DyR9JSLLtn1', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 06:09:27', null, '成功');
INSERT INTO `t_log` VALUES ('TTOEJQ8FddzyL1jnmPx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:31', null, '成功');
INSERT INTO `t_log` VALUES ('tu21QEVffNzlcTqSsoi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:45:06', null, '成功');
INSERT INTO `t_log` VALUES ('TuNxAXnALPdTMe2jUmw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单视图选择\"的视图上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:15:38', null, '成功');
INSERT INTO `t_log` VALUES ('TuSzXeFzTLsnJX12VPH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:47:04', null, '成功');
INSERT INTO `t_log` VALUES ('TVsyfSrHWZq3K34jMf2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为aIb73EUsXyJ51B5oSAt--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:18:40', null, '成功');
INSERT INTO `t_log` VALUES ('twe9lLtaiEBmuB8a4Nu', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-GeneralApplication-lXcf14X363iuLcPCQUp--__KUVqdHRmJ5NsJE8KuRt', '返回', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 19:53:56', null, null);
INSERT INTO `t_log` VALUES ('TWP83NiflS0ljRnOig3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为6UQWYzLkSrG8NjYEzm0--__g0zLnKmg2lFtizVC3tH的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:39:25', null, '成功');
INSERT INTO `t_log` VALUES ('tZDNe9igoki4kxDqQ1f', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:49:11', null, '成功');
INSERT INTO `t_log` VALUES ('u0phUcUdAJH0DlvWFSq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:18', null, '成功');
INSERT INTO `t_log` VALUES ('u2vVgpdatQzV2QNCmBp', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为Qc69EItzoIFIKPMWw0C--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:57:37', null, '成功');
INSERT INTO `t_log` VALUES ('u4t7DG9ZApImBgKW6Mm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为3cSFEqprANprsrAhp6w--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:13:04', null, '成功');
INSERT INTO `t_log` VALUES ('U4ZeaKFEhncnfrJNZCQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:48:36', null, '成功');
INSERT INTO `t_log` VALUES ('Ua3cHYJGyookfH0EOuh', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:57:02', null, '成功');
INSERT INTO `t_log` VALUES ('uaGGspN7wM5EpWm07zq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"，记录ID为mg8EFuFtY2tz5mvjihN--__vUEJS897NWxwBBRpl4K的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:05:59', null, '成功');
INSERT INTO `t_log` VALUES ('UANYHIcmYBRGP2cBYME', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:36', null, '成功');
INSERT INTO `t_log` VALUES ('UAWgePI8mCkuzJVwlE6', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:00:12', null, '成功');
INSERT INTO `t_log` VALUES ('UAwYXphjMCmxssnAb0I', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为Vv4b7v1Y9uuh0iLyr7K--__Wf4cCVNo886s3iN3lvQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:22:08', null, '成功');
INSERT INTO `t_log` VALUES ('UdPhZBexIEojgXrZWUm', 'Ai6hllhNjS2ull9TKGb', 'admin(Admin)', '添加软件失败', '添加软件', '172.24.0.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 10:28:34', null, '失败');
INSERT INTO `t_log` VALUES ('uE2zdXDGYv6f0XJX37n', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"入库\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:13:29', null, '成功');
INSERT INTO `t_log` VALUES ('UeahQKwLUJIB3YFnOcL', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:55:19', null, '成功');
INSERT INTO `t_log` VALUES ('uEXtHmkwhHvoRX2rcbI', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"主数据\"的视图上进行了Excel导入操作', 'Excel导入', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:17:53', null, '成功');
INSERT INTO `t_log` VALUES ('uFwJP8fLDPuVxu9301B', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:56:27', null, '成功');
INSERT INTO `t_log` VALUES ('UGcyvxHEN3mO4RpCXIG', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"，记录ID为jx07lh2QtLfZGsZgHoD--__Vt7h4bgyjQXp8FUN9Mz的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:08', null, '成功');
INSERT INTO `t_log` VALUES ('uitpgkiwOWdoG3kwtQM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为X1ZbPmKkjqw8yASGZFv--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:55:30', null, '成功');
INSERT INTO `t_log` VALUES ('uJZjCeZVGpAlYDk7Gg5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:34:52', null, '成功');
INSERT INTO `t_log` VALUES ('UK8j3RABzDJP21RkHE5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"的视图上进行了新增操作', '新增', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:33:20', null, '成功');
INSERT INTO `t_log` VALUES ('UkyKa0N0YluIoWiBD1g', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成本项目\"的视图上进行了新建操作', '新建', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:26:36', null, '成功');
INSERT INTO `t_log` VALUES ('UM6VHb1tRL7lZwTYAGD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.48.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 04:13:41', '170019442111800000', '成功');
INSERT INTO `t_log` VALUES ('UoYA78xc3UewWxLytk2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为7eTKrvaVDNvigK6lHMN--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:08:58', null, '成功');
INSERT INTO `t_log` VALUES ('UpV7fyQlw3RkWmmKn6k', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为FxR71qdFE5pjHA05M7R--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:18:33', null, '成功');
INSERT INTO `t_log` VALUES ('UQP6i8qm54xwyjXZQnJ', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）进行管理后台登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:13:25', null, '成功');
INSERT INTO `t_log` VALUES ('ur8UUAAHQr2iMK4Og5q', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:55:11', null, '成功');
INSERT INTO `t_log` VALUES ('urFJqRb5MZbk3YrfVwg', '__oP0irhWXGA2oZRusW1d', '系统管理员', '登录系统', '登录', '192.168.48.1', null, '3CffNlgt9B9StIjIUPB', '2023-03-01 03:03:24', '167763980408000000', null);
INSERT INTO `t_log` VALUES ('URzqVAkIzFieAj5Hc01', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:37:31', '170054865075800000', '成功');
INSERT INTO `t_log` VALUES ('USMvIJkq2kcmSfnBqRj', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:36:42', null, '成功');
INSERT INTO `t_log` VALUES ('uSmyoWCHv4LmfRoGBCS', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"客户管理\"，记录ID为h4moGfkVcCMyl9ZrF81--__g9yXfu7GqVPgW3ZOkeB的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:52:59', null, '成功');
INSERT INTO `t_log` VALUES ('UT35AwwSnbZsHcOkrv0', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:49', null, '成功');
INSERT INTO `t_log` VALUES ('UtECceSdEZ8MgFEohqb', 'Ai6hllhNjS2ull9TKGb', 'admin(Admin)', '添加软件失败', '添加软件', '172.24.0.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 10:28:37', null, '失败');
INSERT INTO `t_log` VALUES ('uUPz1vIYlnizG3VN3H2', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:58:37', null, '成功');
INSERT INTO `t_log` VALUES ('Uutctb0UOpCL66Zj8In', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为3H3d2Gc5aqDhIra5GV2--__g0zLnKmg2lFtizVC3tH的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:35:43', null, '成功');
INSERT INTO `t_log` VALUES ('UViTFv9aqjtn9qVjLnO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '视图-工单记录查询', '新建', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:39', null, null);
INSERT INTO `t_log` VALUES ('uvpsdvN0r6PQIPeFYi7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商分类\"，记录ID为wyCAACWknED5uhNaVq6--__lnRtGpTlor4wjdxPlsK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:42:01', null, '成功');
INSERT INTO `t_log` VALUES ('UXNABr0MN69y8GNNfQK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为xnYeEfkr9EB4ehJhVNn--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:10:00', null, '成功');
INSERT INTO `t_log` VALUES ('uXOwWbpgI4Xg6ZnpOOi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为oug0LVED8huynbs4Nqi--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:14:02', null, '成功');
INSERT INTO `t_log` VALUES ('UYAmT3ltc2qyt40NkC3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"通用主数据\"，记录ID为PEMHPyofnvrMVD12803--__YKQGrRTMGeqRoKzd8td的表单上进行了保存操作', '保存', '172.31.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 11:35:28', null, '成功');
INSERT INTO `t_log` VALUES ('Uz5wW2YgsU6qqQ0hTag', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:36:15', null, '成功');
INSERT INTO `t_log` VALUES ('V0s74ovo0J06v8jdI0x', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为Z17oAQO2Ai0mAgW3m3F--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:51:12', null, '成功');
INSERT INTO `t_log` VALUES ('V0Ta6zNO4JHl22YCktk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.24.0.2', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 10:26:00', '170004395955000000', '成功');
INSERT INTO `t_log` VALUES ('V6yt3YdNDmY2doJbRMM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为lcIbOaPLR7wQj8g4zEs--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:30:01', null, '成功');
INSERT INTO `t_log` VALUES ('V7jUvAxFYhRozrlcflo', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:41', null, '成功');
INSERT INTO `t_log` VALUES ('V8xK3lqHwjEqKQMTE32', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为qzXgVdGEY30UvEUbxfU--__4uRrLT7T87sJmdbRinQ的表单上进行了测试操作', '测试', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:18', null, '成功');
INSERT INTO `t_log` VALUES ('vA5sOrJukqXabpWHptv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"原辅材料检验报告\"，记录ID为uub0bhM3NNemzJzPrOP--__xJU3FsrGsPfyiFmZ2Rk的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:04:17', null, '成功');
INSERT INTO `t_log` VALUES ('vaeiclQ9VkWdIqe0fSk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:41', null, '成功');
INSERT INTO `t_log` VALUES ('vc5KUA652oFzqjLJsry', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了物料反查操作', '物料反查', '192.168.240.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 05:59:34', null, '成功');
INSERT INTO `t_log` VALUES ('VeAd2lnYMpgT0H3h09Q', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"，记录ID为nViBT99SKvGnusEjWle--__vUEJS897NWxwBBRpl4K的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:06:11', null, '成功');
INSERT INTO `t_log` VALUES ('VGcyAgpVBSi7Uaeb1el', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"的视图上进行了批量提交操作', '批量提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:57:34', null, '成功');
INSERT INTO `t_log` VALUES ('vIG8NkOKBzcx85SbSZJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:47:43', null, '成功');
INSERT INTO `t_log` VALUES ('viymGV0x9Qho0kp4CYz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"安全管控列表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:01:21', null, '成功');
INSERT INTO `t_log` VALUES ('vJ1XQul1N20wrK4pKJ0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为aMm8LohhQX4mJJn1Xxt--__wCZJ07qTQjC8ai29f4f的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:02:05', null, '成功');
INSERT INTO `t_log` VALUES ('VjcCTXEo3kSoKvu921O', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为AG7V9BCOs4Svq8QDHWG--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:34:39', null, '成功');
INSERT INTO `t_log` VALUES ('VK6Yn17P7uFmQsUZdaz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为sZaZmh9LBNXMlCWH7OF--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:04:55', null, '成功');
INSERT INTO `t_log` VALUES ('vKSG5296bhuVBR9EAqg', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"质量管控\"，记录ID为Pt7l32bYgGf9NcD6A7h--__itFXiGoMoAAARgTKvxI的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:01:27', null, '成功');
INSERT INTO `t_log` VALUES ('vKVhETvZ4stpKfGCIVH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"，记录ID为p9KgRxCUiZoRynL9kyH--__eDQsYDSRMWfSCYSb02M的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:52:01', null, '成功');
INSERT INTO `t_log` VALUES ('VLdbY7tqchHHKIxznFJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:48:52', null, '成功');
INSERT INTO `t_log` VALUES ('vLmxB6H843Lfz5wHNQW', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:35', null, '成功');
INSERT INTO `t_log` VALUES ('VlXxONbQWQwjKKgZXAU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为sC1tgBNv0z5onE3O5VB--__g0zLnKmg2lFtizVC3tH的表单上进行了提交审批操作', '提交审批', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:37:30', null, '成功');
INSERT INTO `t_log` VALUES ('VMndxXolZ7xDyYTyCgq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为cf5EwXATzDprR5TIQZX--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:07:03', null, '成功');
INSERT INTO `t_log` VALUES ('VNLpd57Tm3mpI8rvTfQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程\"，记录ID为oEVhmBrgXFKQ0mwSjXb--__39g8WbWek4hssApD4LL的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:35:20', null, '成功');
INSERT INTO `t_log` VALUES ('vo1cwBglInpKh7aiBJq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:43:31', null, '成功');
INSERT INTO `t_log` VALUES ('vO2TSo4xgi7b10SV2bs', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为2KYx3SihtUIq4R7NEPg--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:51:14', null, '成功');
INSERT INTO `t_log` VALUES ('VP45rvtCnXIm7FwKR0C', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.32.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 03:49:36', '170019297631700000', '成功');
INSERT INTO `t_log` VALUES ('VPKTdn2aIPDxOH04fx5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:26', null, '成功');
INSERT INTO `t_log` VALUES ('vPqbA1Sv2tMxf2pP7If', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为NpOkzDeJpTiQsUK6DNz--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:01:21', null, '成功');
INSERT INTO `t_log` VALUES ('VQIxASqzmF1Xd5lHXT9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:17:57', null, '成功');
INSERT INTO `t_log` VALUES ('vqVPyCCawmILrKTb1Jw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"联系人\"的视图上进行了新增操作', '新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:49:34', null, '成功');
INSERT INTO `t_log` VALUES ('VQwnxAB39MblnP136j0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务卡片模板\"，记录ID为L5qt2zi8zcJpiJZLvCV--__9eTh5FVaLSkgRJSa7Vw的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:05:58', null, '成功');
INSERT INTO `t_log` VALUES ('VRQNSRYd2oBtUNmbZpZ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为mGEpgrbl8uAZMw5H90R--__wCZJ07qTQjC8ai29f4f的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:05', null, '成功');
INSERT INTO `t_log` VALUES ('VSTrL1G7iGUOw3wQyV9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验报告\"，记录ID为aa2oOInZb3zjHqLHtr5--__vfxVwCQkAVaQfHfNzuu的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:06:11', null, '成功');
INSERT INTO `t_log` VALUES ('Vt8XlmMS8GQWO35N8fO', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:17:44', null, '成功');
INSERT INTO `t_log` VALUES ('VtyQvwqN4atALuCxiHi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"，记录ID为cLWV3gvWcIej6q8GSce--__vUEJS897NWxwBBRpl4K的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:05:47', null, '成功');
INSERT INTO `t_log` VALUES ('VuZn4PWlIGZ1cV2zdYW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:48:31', null, '成功');
INSERT INTO `t_log` VALUES ('vVaCUWFXMu4y8mXgcN7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为ButCsC7nh7TtqjRZ230--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:12:28', null, '成功');
INSERT INTO `t_log` VALUES ('vWD9jBOJLSek5Bs0FsY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"委外加工单主表\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:54:49', null, '成功');
INSERT INTO `t_log` VALUES ('VXGNCCeMqxD0oot5QVL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:57:59', null, '成功');
INSERT INTO `t_log` VALUES ('VxlC8VrWYq5n2reuT98', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"，记录ID为hWlDmZocxpczXgyy92r--__eDQsYDSRMWfSCYSb02M的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:53:01', null, '成功');
INSERT INTO `t_log` VALUES ('Vxosen7ZjyrYMKa5WTX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为FnEVbbrl7OKmcCbfK8x--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:16:11', null, '成功');
INSERT INTO `t_log` VALUES ('vY4tcZMq2NvjHLGtW5j', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:46:00', '170053116018500000', '成功');
INSERT INTO `t_log` VALUES ('vYXFbLEQ4ll4hrhSoxq', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试卷\"，记录ID为BNaR2wS7Vi3obyjAae7--__i7s6XAFwa0Lrw21bdrf的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:04:16', null, '成功');
INSERT INTO `t_log` VALUES ('w1eoreHlSJrABLqZnn8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为YrdZIc525ZBz8ySQ2CN--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:46:32', null, '成功');
INSERT INTO `t_log` VALUES ('w27mfsuKoAeidTpJu3T', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"系统主数据\"的视图上进行了Excel导入操作', 'Excel导入', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:17:15', null, '成功');
INSERT INTO `t_log` VALUES ('w4cWwQ99GeeoUQwvDpX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"，记录ID为XZd6XXCJ1JnuKydHyFM--__U1GhHccb8PChdfSXzNK的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:36:26', null, '成功');
INSERT INTO `t_log` VALUES ('W5K21KPf9KqmXHI8x18', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:07', null, '成功');
INSERT INTO `t_log` VALUES ('W6bk5Y1rGmvVaye0zEx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"移交工序表单\"，记录ID为BLe1H2bTA76vjYuVOOu--__vCRHmSlzthRvQfmmJKt的表单上进行了确认操作', '确认', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:52:23', null, '成功');
INSERT INTO `t_log` VALUES ('WbABn400FEhAWhwq6rL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为VRzYaSBR6A3j7Rs8Tnq--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:06:59', null, '成功');
INSERT INTO `t_log` VALUES ('wcz3aFY02Wpp8DSIzDr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"，记录ID为lzoMjt448havxSjW4dI--__xb3jfeGL6RpLaC0dIrc的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:58:40', null, '成功');
INSERT INTO `t_log` VALUES ('wd2cZhp8NXSUQfWqTJw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:32:10', null, '成功');
INSERT INTO `t_log` VALUES ('Wd4ebNqlAIWuzyqbd1n', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:55:50', null, '成功');
INSERT INTO `t_log` VALUES ('weIChcwertOw8B8SLL0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购及运费付款单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:43:03', null, '成功');
INSERT INTO `t_log` VALUES ('weJ9RjovFCspaONNNI9', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程\"，记录ID为oEVhmBrgXFKQ0mwSjXb--__39g8WbWek4hssApD4LL的表单上进行了发布操作', '发布', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:35:19', null, '成功');
INSERT INTO `t_log` VALUES ('WEk6mJppqJMvFyiEyZ1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"，记录ID为9DmyPe7VKrnrqPisfdH--__5w1TpZZwkmeVLoGFxg2的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:50:14', null, '成功');
INSERT INTO `t_log` VALUES ('WeYBc0RaYZGX3zjv0Z3', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:52:28', null, '成功');
INSERT INTO `t_log` VALUES ('WGIN3emPIsMuBTdcCJl', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '视图-客户记录查询', '新建', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:47', null, null);
INSERT INTO `t_log` VALUES ('wGtsPz5mKN5d2pNjlUm', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:36', null, '成功');
INSERT INTO `t_log` VALUES ('wi9cGotCZCazy2L69mw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-work_order_form-mRlsWPKkf4mH8AYKnLz--__xNY205iypdq4Cpd8rqT', '返回', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:44', null, null);
INSERT INTO `t_log` VALUES ('WiqJdHC4f8MPWhWsDTi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:00', null, '成功');
INSERT INTO `t_log` VALUES ('wlM2ZrZi3pJGGhzxpEN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为z2H1wqGA9JTwYjtaaR4--__n1y54WQbTwfJ3TBM6dU的表单上进行了保存并新增操作', '保存并新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:47:26', null, '成功');
INSERT INTO `t_log` VALUES ('WnFDZz8NRUSbJdF63Vg', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:32:22', null, '成功');
INSERT INTO `t_log` VALUES ('WNl2WRTlQrYrRtKX4lC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"的视图上进行了删除操作', '删除', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 04:02:55', null, '成功');
INSERT INTO `t_log` VALUES ('WOwfJRBXSYYSoukd0wC', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.28.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 02:06:59', '170010041913100000', '成功');
INSERT INTO `t_log` VALUES ('WoYrVLgS97RuOOiwEDJ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-engineer_assignment_form-pbKAXZCI7PD6Sjap6X2--__A0KDy4zztL2r93exxGg', '取消', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:02:57', null, null);
INSERT INTO `t_log` VALUES ('WpoEanUlVmrQEdk9z4I', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题标签\"，记录ID为YTqG0Vxiwu8gK6Boiyc--__Vt7h4bgyjQXp8FUN9Mz的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:13', null, '成功');
INSERT INTO `t_log` VALUES ('Wq4hr4JILmVmH3738F5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为G6UyEdehxcGJ8kKu82t--__vpiPjdhfgWbn9kYVtHM的表单上进行了提交操作', '提交', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:23:57', null, '成功');
INSERT INTO `t_log` VALUES ('wQ5Bug7tOzOmUfLOsZy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商分类\"，记录ID为wyCAACWknED5uhNaVq6--__lnRtGpTlor4wjdxPlsK的表单上进行了取消操作', '取消', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:42:02', null, '成功');
INSERT INTO `t_log` VALUES ('wqmxqCThZXcAjsQwLNk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为FxR71qdFE5pjHA05M7R--__4uRrLT7T87sJmdbRinQ的表单上进行了确认完成操作', '确认完成', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:37:58', null, '成功');
INSERT INTO `t_log` VALUES ('WQNx8uXtlnMp2fbuzJ7', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:46:18', null, '成功');
INSERT INTO `t_log` VALUES ('wT3sjXdslB8sxJ6zElV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为uNFyMw8YN4PLYI78x0C--__wCZJ07qTQjC8ai29f4f的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:52:44', null, '成功');
INSERT INTO `t_log` VALUES ('WwoatfWmJ3pqXQmdrEy', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"施工日志\"，记录ID为Qc69EItzoIFIKPMWw0C--__YJuLxgj7c3mjCJFF8nF的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:57:04', null, '成功');
INSERT INTO `t_log` VALUES ('Wx9876hDYOdwW6RH9N3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的课程\"的视图上进行了新建课程操作', '新建课程', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:21:34', null, '成功');
INSERT INTO `t_log` VALUES ('WYO3k0W5vGyONU7hJyX', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工作报告\"，记录ID为vmdO5Ls9WxpnIWyrkIi--__09P5nR6lbX6xcaNi1ym的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:35:32', null, '成功');
INSERT INTO `t_log` VALUES ('WzloiI1dDg5XKPg771b', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"我的试卷\"的视图上进行了新建试卷操作', '新建试卷', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:03:14', null, '成功');
INSERT INTO `t_log` VALUES ('X0hhBzqfpR22ze6R56Q', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"的视图上进行了新增操作', '新增', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:37:42', null, '成功');
INSERT INTO `t_log` VALUES ('x2Ams0OfaFLge9KvZLj', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:57:10', null, '成功');
INSERT INTO `t_log` VALUES ('X3gmjqDRXlfHf01fD7K', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为CXOYVQcimVsoJofgrBl--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:59:14', null, '成功');
INSERT INTO `t_log` VALUES ('XAmJSYLn9v2xBXzQo1R', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"验收单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:59:15', null, '成功');
INSERT INTO `t_log` VALUES ('Xar274gXb7vT0zYubRz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目台账\"，记录ID为7SKOlyEynXHlaLChZuH--__DS5b6ibHccsFJm1jmgd的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:07:19', null, '成功');
INSERT INTO `t_log` VALUES ('XbI6Wjjm9V0JpEtNTGc', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试卷\"，记录ID为bHMnHnOKbMG3lQWyFUc--__i7s6XAFwa0Lrw21bdrf的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:03:10', null, '成功');
INSERT INTO `t_log` VALUES ('XbW1D8krcYpfriqv3nF', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:59', null, '成功');
INSERT INTO `t_log` VALUES ('xE3tqMHhum8SVLQUZw8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为mwAuJkWmwDIsPJENM0i--__FMt65zqIy94SOV1u4xO的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:52', null, '成功');
INSERT INTO `t_log` VALUES ('xFmPO2unIXjHHxle3ag', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-event_form-6NmcYospxTd9DsMQDjy--__qGyDZsLMuZ0J4FSlRvu', '取消', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:03:57', null, null);
INSERT INTO `t_log` VALUES ('xHMk8OpkrsGXv58OC4R', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"考试类别\"，记录ID为JtXtiNDcCr9VOcv9IfX--__FMt65zqIy94SOV1u4xO的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:20:45', null, '成功');
INSERT INTO `t_log` VALUES ('XiO5OksLR8skTaHpdQQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:33', null, '成功');
INSERT INTO `t_log` VALUES ('xj5Gux9FPeJ0V1XZCTn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:12:07', null, '成功');
INSERT INTO `t_log` VALUES ('xjHUDnD83ubKxDrU1L0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商分类\"，记录ID为S4iRddmVKs9aJJAf40d--__lnRtGpTlor4wjdxPlsK的表单上进行了取消操作', '取消', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:41:53', null, '成功');
INSERT INTO `t_log` VALUES ('xjt969saGXN00RHoaKw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"，记录ID为cLWV3gvWcIej6q8GSce--__vUEJS897NWxwBBRpl4K的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:05:51', null, '成功');
INSERT INTO `t_log` VALUES ('xk1tzvsnv8zy2oX4x3W', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:45:24', null, '成功');
INSERT INTO `t_log` VALUES ('XK655cuDcg12SYWrp7x', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:55:56', null, '成功');
INSERT INTO `t_log` VALUES ('xNeJ8nlyU9Lo0LbouKY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为UeaKIJjoloisut72an0--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:39:31', null, '成功');
INSERT INTO `t_log` VALUES ('XogPOz5fV2xP9uphih5', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:59:19', '170010715929000000', '成功');
INSERT INTO `t_log` VALUES ('XolreDQxN1TC0eYc3YK', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:05', null, '成功');
INSERT INTO `t_log` VALUES ('Xor3GXDkegQwWRI81mi', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购订单表\"，记录ID为6UQWYzLkSrG8NjYEzm0--__g0zLnKmg2lFtizVC3tH的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:39:26', null, '成功');
INSERT INTO `t_log` VALUES ('XPZOOpIgewolQumt84a', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询部门', '查询部门', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:09', null, '成功');
INSERT INTO `t_log` VALUES ('XsuuN3Vs1PI2SMq1ym1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为AZ0XpQC8JGQylZjkX1F--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:47:45', null, '成功');
INSERT INTO `t_log` VALUES ('xtOOuzT8gWOiSwcLTAp', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 04:23:41', '170010862137900000', '成功');
INSERT INTO `t_log` VALUES ('xtzXVglQ6hYwMZuojfL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '127.0.0.1', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 09:26:49', '170064520920900000', '成功');
INSERT INTO `t_log` VALUES ('XU3r892Gc1y29Jcmf5G', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了删除操作', '删除', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:47:49', null, '成功');
INSERT INTO `t_log` VALUES ('XucPpzbnwIQGbNAVxBk', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:23:55', null, '成功');
INSERT INTO `t_log` VALUES ('XuORxen5Rhip8Gjd0gm', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程类目\"，记录ID为w7VqJvd9u75fHDDDE15--__ojmQYrCnAvowW5SvtHj的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:19:59', null, '成功');
INSERT INTO `t_log` VALUES ('xVIct3Trjn3vBvyhoDU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"，记录ID为M7BJugcyaNgtUO9BH4G--__5w1TpZZwkmeVLoGFxg2的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:49:30', null, '成功');
INSERT INTO `t_log` VALUES ('xvqXLVMmaWpHVWHzUIN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-event_form-Z4oanht5xzT80B28gfy--__qGyDZsLMuZ0J4FSlRvu', '取消', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:04:22', null, null);
INSERT INTO `t_log` VALUES ('xYINO2CwOCfiZjLb52N', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"，记录ID为dst43eFqwv1YdbQEhSD--__uYjtVG9ickEm1AEFnob的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:17', null, '成功');
INSERT INTO `t_log` VALUES ('y3dTFPqlBVTAinC6MJe', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售收款明细\"的视图上进行了删除操作', '删除', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:13:39', null, '成功');
INSERT INTO `t_log` VALUES ('Y3hL0FQyiavTssZ6DJ8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为m53LMzSkSHNuO5uID1h--__26GUrdJFdllI3LIixHJ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:15:58', null, '成功');
INSERT INTO `t_log` VALUES ('Y3X6uUoXZIOLhaupmfB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分事件\"的视图上进行了新建操作', '新建', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:20:04', null, '成功');
INSERT INTO `t_log` VALUES ('Y4FzirQGAfN8M0f7eWn', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:40', null, '成功');
INSERT INTO `t_log` VALUES ('Y6aSxeZSqGlnSwPqlDs', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:59:02', null, '成功');
INSERT INTO `t_log` VALUES ('Y718hzBheLusT683A5r', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:50:04', null, '成功');
INSERT INTO `t_log` VALUES ('Y7ESQBMwB12zKqEuZjv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:20:57', '170055485673200000', '成功');
INSERT INTO `t_log` VALUES ('y89lcpUl7rPKBtxir6R', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '表单-TravelApplication-8yvUcZnVYWGOkwTZh58--__AQ6kX1DThAErLxCdqnJ', '返回', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 19:53:50', null, null);
INSERT INTO `t_log` VALUES ('yAazN7eGq3fdrskm14p', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为mGEpgrbl8uAZMw5H90R--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:56:08', null, '成功');
INSERT INTO `t_log` VALUES ('YatoJNsfTiyndG6AUoQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为rQr8zpUCFJqDLPwQGEp--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:49:54', null, '成功');
INSERT INTO `t_log` VALUES ('Yb9dmLhqRVfoT62gbPo', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:54', null, '成功');
INSERT INTO `t_log` VALUES ('yB9JYUqvJRBJQDT4SaW', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序移交单\"，记录ID为KE73Ju6JWwDQYhAwCp6--__eDQsYDSRMWfSCYSb02M的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:51:03', null, '成功');
INSERT INTO `t_log` VALUES ('yBDLOaymmcYmbz38uZD', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"加工单主表\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:39:32', null, '成功');
INSERT INTO `t_log` VALUES ('ycAubNQYyndknuwtQXv', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为lcIbOaPLR7wQj8g4zEs--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:28:44', null, '成功');
INSERT INTO `t_log` VALUES ('YcO3NuXbiGB3mC3XqQO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为2PKMzMEmnWBcWfDo28L--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:13:01', null, '成功');
INSERT INTO `t_log` VALUES ('Yf5MzQxmTLjNsHyaEjr', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了创建工序操作', '创建工序', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:15:30', null, '成功');
INSERT INTO `t_log` VALUES ('yGM8SEEvRLcsBJqIJxV', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:42', null, '成功');
INSERT INTO `t_log` VALUES ('YGvsg8GJ7aqR7HEBVBz', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:49:39', null, '成功');
INSERT INTO `t_log` VALUES ('yh3dEFt9qHhrKIC9JCr', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 01:50:35', null, '成功');
INSERT INTO `t_log` VALUES ('YieSpIUl1mSvTmdU9TQ', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:31:52', null, '成功');
INSERT INTO `t_log` VALUES ('yIyuyFApfvZwGKbmB4g', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"，记录ID为oi0QvAWSTDLlcd6gztU--__jGEnurV1wGiRk1ErZ5A的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:48:50', null, '成功');
INSERT INTO `t_log` VALUES ('Yj4iJN7B2KfyMf84N9L', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"课程\"，记录ID为wTOgqywfhLPxe8Xa5vs--__39g8WbWek4hssApD4LL的表单上进行了发布操作', '发布', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:26:32', null, '成功');
INSERT INTO `t_log` VALUES ('yMiBaFofWFdS4ogwu1z', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', '添加软件', '添加软件', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:31:36', null, '成功');
INSERT INTO `t_log` VALUES ('YmxED7Z2Au7icTyytLx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为lcIbOaPLR7wQj8g4zEs--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:28:41', null, '成功');
INSERT INTO `t_log` VALUES ('Yn3BePFbgH6Di7AdELc', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 05:55:17', null, '成功');
INSERT INTO `t_log` VALUES ('YnRHNu0pCTHhW6j6ifN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"全部项目立项单\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:22:19', null, '成功');
INSERT INTO `t_log` VALUES ('YptX5JkIwaZoVHOS0Jf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:59:22', null, '成功');
INSERT INTO `t_log` VALUES ('ySsba11VsgQvd5kQrrp', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"补领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:50:01', null, '成功');
INSERT INTO `t_log` VALUES ('YStHeQRq0huBbkyBOEL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为zgFq8mQ5DTPwQQFx1cy--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:15:18', null, '成功');
INSERT INTO `t_log` VALUES ('yUcL4xUXyUVxRNBaXug', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"采购及运费付款单\"，记录ID为OLwLEC9np7Ujhur885U--__FhQok2yflsbWA9JCQt0的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:43:01', null, '成功');
INSERT INTO `t_log` VALUES ('YV9WBhfCyjz3tk80Map', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为B95oUs2ApoYPxIM38Xd--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:00:56', null, '成功');
INSERT INTO `t_log` VALUES ('yvRYOqQzX3x2B7mwmRM', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:39:14', null, '成功');
INSERT INTO `t_log` VALUES ('yxAD2l85MAnExMhwSZU', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售退货\"，记录ID为nViBT99SKvGnusEjWle--__vUEJS897NWxwBBRpl4K的表单上进行了返回操作', '返回', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:06:05', null, '成功');
INSERT INTO `t_log` VALUES ('yxzNg0aJOtR9RWUbPbb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:49:49', null, '成功');
INSERT INTO `t_log` VALUES ('Yybj3AyapJDbBACm1wQ', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"运费单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:32:12', null, '成功');
INSERT INTO `t_log` VALUES ('yYtVan8Q4kZcMHursGs', '__oP0irhWXGA2oZRusW1d', '系统管理员', '表单-LeaveApplication', '返回', '192.168.80.1', null, '3CffNlgt9B9StIjIUPB', '2023-03-03 00:38:00', null, null);
INSERT INTO `t_log` VALUES ('YzkEGIzprSQhWIMCbtf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"退料单\"，记录ID为PgoL83M3SdvZJPRXCir--__5w1TpZZwkmeVLoGFxg2的表单上进行了保存操作', '保存', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 02:27:48', null, '成功');
INSERT INTO `t_log` VALUES ('Z1ONByAae4AqZWbRvfo', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题\"，记录ID为FmZAmloBoBeq2xGC4Qw--__wCZJ07qTQjC8ai29f4f的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:58:10', null, '成功');
INSERT INTO `t_log` VALUES ('z2XAwWRgSLOt1VCzYxb', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为0iBYM2wX8qFQRILJ07w--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:57:35', null, '成功');
INSERT INTO `t_log` VALUES ('Z4SS30MXonRy82HVboL', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"商品库存\"，记录ID为1iNFV3UTdC222CwI5wo--__oZjaXGW0FfpkzFyFUSo的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:31:16', null, '成功');
INSERT INTO `t_log` VALUES ('Z6n3HZhelANLjdFzTa3', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为UM8BxD7WcJlKw5f53hi--__vpiPjdhfgWbn9kYVtHM的表单上进行了保存操作', '保存', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:41:12', null, '成功');
INSERT INTO `t_log` VALUES ('Z79yVT8nULflzRpPIqa', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产工序包含视图\"的视图上进行了批量添加操作', '批量添加', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:00:08', null, '成功');
INSERT INTO `t_log` VALUES ('zD2vy5oPAXaiY2MyEsV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为xRgky2VyvMMavLLAdrh--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:14:54', null, '成功');
INSERT INTO `t_log` VALUES ('zdlsgrsygSnBoMO32HY', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为j9wjIjL0zSzoaOpG7VC--__n1y54WQbTwfJ3TBM6dU的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:42:22', null, '成功');
INSERT INTO `t_log` VALUES ('zE2JbSh13O8CWzuhnvN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '172.27.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-15 14:30:39', '170005863940000000', '成功');
INSERT INTO `t_log` VALUES ('zelpErFFoiAOWfqDlBN', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"过程检验报告\"，记录ID为stRiMhazf4SDAytVpTa--__6pAwvTxawWww5Q44b8Y的表单上进行了保存并新建操作', '保存并新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:05:23', null, '成功');
INSERT INTO `t_log` VALUES ('ZEmMjdu2FOMpmSFvdOS', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"领料单\"的视图上进行了新建操作', '新建', '192.168.224.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-22 01:23:35', null, '成功');
INSERT INTO `t_log` VALUES ('ZEpid2yTwH528Ky9g5I', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）进行系统登录操作', '登录', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:10:37', '170055783663400000', '成功');
INSERT INTO `t_log` VALUES ('ZeSsmUyjYEaV5a45CiO', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"出库\"，记录ID为ok2Hf0JjUstfg9dKUSB--__HNVQplRqvUjt3oYLr2S的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:59:19', null, '成功');
INSERT INTO `t_log` VALUES ('ZeZa3qPyRULdo13rxgf', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"积分商品\"，记录ID为prajS2djiCkowB9nZRZ--__26GUrdJFdllI3LIixHJ的表单上进行了保存操作', '保存', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:14:46', null, '成功');
INSERT INTO `t_log` VALUES ('ZfwM305xU65HHwJfmvH', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"销售订单\"，记录ID为aIb73EUsXyJ51B5oSAt--__4uRrLT7T87sJmdbRinQ的表单上进行了返回操作', '返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:38:23', null, '成功');
INSERT INTO `t_log` VALUES ('zgrjCnpTOOqogmODGiT', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.64.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-17 08:36:02', null, '成功');
INSERT INTO `t_log` VALUES ('zi5sdkihcDtkdt5W0P1', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', '视图-客户记录查询', '新建', '192.168.10.105', null, '3CffNlgt9B9StIjIUPB', '2023-04-23 20:00:50', null, null);
INSERT INTO `t_log` VALUES ('zJwlOeEZO0ch9YvmZqV', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"工序单\"，记录ID为MCYaIatTjmesUMt5Y6I--__SWwBAHYU0lFiVZEnzUg的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:13:56', null, '成功');
INSERT INTO `t_log` VALUES ('zkMrNqG3MJlF1R37HN8', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:12:21', null, '成功');
INSERT INTO `t_log` VALUES ('ZKUHiZnmoTjHjslyHC4', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"任务标签\"，记录ID为0SCelc1A1PN4h1AzkIl--__x22TfJ9GtTbbTM8CASB的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:17:57', null, '成功');
INSERT INTO `t_log` VALUES ('ZMwHBAuPjHFTfMfhbo4', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主表\"，记录ID为jzzLSLNXjcnWN3Lq6qt--__c4nJNxX5IHCQ8g6sNhr的表单上进行了保存并返回操作', '保存并返回', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:19:07', null, '成功');
INSERT INTO `t_log` VALUES ('ZnhLV0EXGIW3vOc5z4q', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 07:51:32', null, '成功');
INSERT INTO `t_log` VALUES ('zNjFvKf6W5UFoIaFB4Y', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"试题选项\"的视图上进行了新建选项操作', '新建选项', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 08:01:57', null, '成功');
INSERT INTO `t_log` VALUES ('zoXkygnUhTUGaJkCCBb', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '172.29.0.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-16 03:54:03', null, '成功');
INSERT INTO `t_log` VALUES ('zpimAWJwsNYCck8TIwx', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"成品检验单\"，记录ID为otnjDsk8dVGJJ3KMnEg--__OuOeakKWrL3kSSZLXSd的表单上进行了审批操作', '审批', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 10:56:17', null, '成功');
INSERT INTO `t_log` VALUES ('zqn9buuyp6RwZobRKx0', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"产品BOM\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:22:18', null, '成功');
INSERT INTO `t_log` VALUES ('ZScCkxTESzqkGOsexvl', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"生产任务单主视图\"的视图上进行了新建操作', '新建', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 06:02:47', null, '成功');
INSERT INTO `t_log` VALUES ('zSM22YukjlfsD55Nr7h', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:53:52', null, '成功');
INSERT INTO `t_log` VALUES ('ztKYUEvR1X1nP4lVCP5', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 02:13:44', null, '成功');
INSERT INTO `t_log` VALUES ('ztPF0Q1O99d2Bfq8bwB', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"供应商管理\"，记录ID为e02RX7T6xTmuQvaHvyL--__n1y54WQbTwfJ3TBM6dU的表单上进行了保存并新增操作', '保存并新增', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 09:45:30', null, '成功');
INSERT INTO `t_log` VALUES ('zW1O153oNCzoeY2EyYR', '__sI3r4koRudsAHoNPSnS', 'admin(超级管理员)', 'admin（超级管理员）查询用户', '查询用户', '192.168.208.9', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 11:15:52', null, '成功');
INSERT INTO `t_log` VALUES ('zzyPpskmtqtroqcOjMw', '__oP0irhWXGA2oZRusW1d', 'admin1(系统管理员)', 'admin1（系统管理员）在名称为\"项目立项单\"，记录ID为cf5EwXATzDprR5TIQZX--__vpiPjdhfgWbn9kYVtHM的表单上进行了返回操作', '返回', '192.168.192.5', null, '3CffNlgt9B9StIjIUPB', '2023-11-21 03:44:31', null, '成功');

-- ----------------------------
-- Table structure for t_media
-- ----------------------------
DROP TABLE IF EXISTS `t_media`;
CREATE TABLE `t_media` (
  `ID` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `SIZE` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `MEDIAID` varchar(255) DEFAULT NULL,
  `DOMAINID` varchar(255) DEFAULT NULL,
  `CREATEDATE` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_media
-- ----------------------------

-- ----------------------------
-- Table structure for t_operation
-- ----------------------------
DROP TABLE IF EXISTS `t_operation`;
CREATE TABLE `t_operation` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RESTYPE` int(11) DEFAULT NULL,
  `CODE` int(11) DEFAULT NULL,
  `APPLICATIONID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_operation
-- ----------------------------

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `ID` varchar(255) NOT NULL,
  `ROLE_ID` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(255) DEFAULT NULL,
  `RES_ID` varchar(255) DEFAULT NULL,
  `RES_TYPE` int(11) DEFAULT NULL,
  `OPERATION_ID` varchar(255) DEFAULT NULL,
  `SORTID` varchar(255) DEFAULT NULL,
  `APPLICATIONID` varchar(255) DEFAULT NULL,
  `RESNAME` varchar(255) DEFAULT NULL,
  `OPERATIONCODE` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_specialday
-- ----------------------------
DROP TABLE IF EXISTS `t_specialday`;
CREATE TABLE `t_specialday` (
  `ID` varchar(255) NOT NULL,
  `CALENDAR` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `ENDDATE` datetime DEFAULT NULL,
  `STARTTIME1` varchar(255) DEFAULT NULL,
  `ENDTIME1` varchar(255) DEFAULT NULL,
  `STARTTIME2` varchar(255) DEFAULT NULL,
  `ENDTIME2` varchar(255) DEFAULT NULL,
  `STARTTIME3` varchar(255) DEFAULT NULL,
  `ENDTIME3` varchar(255) DEFAULT NULL,
  `STARTTIME4` varchar(255) DEFAULT NULL,
  `ENDTIME4` varchar(255) DEFAULT NULL,
  `STARTTIME5` varchar(255) DEFAULT NULL,
  `ENDTIME5` varchar(255) DEFAULT NULL,
  `WORKDAYS` int(11) DEFAULT NULL,
  `DOMAINID` varchar(255) DEFAULT NULL,
  `LASTMODIFYDATE` datetime DEFAULT NULL,
  `SORTID` varchar(255) DEFAULT NULL,
  `APPLICATIONID` varchar(255) DEFAULT NULL,
  `CONTEXT` varchar(255) DEFAULT NULL,
  `CALENDARID` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FKA896E10EDC9AECC1` (`CALENDAR`) USING BTREE,
  KEY `FKA896E10EC9225C` (`CALENDARID`) USING BTREE,
  CONSTRAINT `FKA896E10EC9225C` FOREIGN KEY (`CALENDARID`) REFERENCES `t_calendar` (`ID`),
  CONSTRAINT `FKA896E10EDC9AECC1` FOREIGN KEY (`CALENDAR`) REFERENCES `t_calendar` (`ID`),
  CONSTRAINT `FKe63ubwm4r8yprd1urkba65ffh` FOREIGN KEY (`CALENDAR`) REFERENCES `t_calendar` (`ID`),
  CONSTRAINT `FKnqyfh0iffgyiq0er3fymjt459` FOREIGN KEY (`CALENDARID`) REFERENCES `t_calendar` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_specialday
-- ----------------------------

-- ----------------------------
-- Table structure for t_standardday
-- ----------------------------
DROP TABLE IF EXISTS `t_standardday`;
CREATE TABLE `t_standardday` (
  `ID` varchar(255) NOT NULL,
  `CALENDAR` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `STARTTIME1` varchar(255) DEFAULT NULL,
  `ENDTIME1` varchar(255) DEFAULT NULL,
  `STARTTIME2` varchar(255) DEFAULT NULL,
  `ENDTIME2` varchar(255) DEFAULT NULL,
  `STARTTIME3` varchar(255) DEFAULT NULL,
  `ENDTIME3` varchar(255) DEFAULT NULL,
  `STARTTIME4` varchar(255) DEFAULT NULL,
  `ENDTIME4` varchar(255) DEFAULT NULL,
  `STARTTIME5` varchar(255) DEFAULT NULL,
  `ENDTIME5` varchar(255) DEFAULT NULL,
  `WEEKDAYS` int(11) DEFAULT NULL,
  `LASTMODIFYDATE` datetime DEFAULT NULL,
  `SORTID` varchar(255) DEFAULT NULL,
  `DOMAINID` varchar(255) DEFAULT NULL,
  `APPLICATIONID` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK58DBA434DC9AECC1` (`CALENDAR`) USING BTREE,
  CONSTRAINT `FK58DBA434DC9AECC1` FOREIGN KEY (`CALENDAR`) REFERENCES `t_calendar` (`ID`),
  CONSTRAINT `FK894i3r8b513ef5fl0vpqhuril` FOREIGN KEY (`CALENDAR`) REFERENCES `t_calendar` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_standardday
-- ----------------------------
INSERT INTO `t_standardday` VALUES ('30pi0lcbHTou7WecCCa', 'Bj1dOzumfPeka4gL7K1', '02', '', '', '', '', '', '', '', '', '', '', '0', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('3IkoiSZaBO36zZXIcWC', 'rQjAiiWFZgsx47OJ7JW', '02', '', '', '', '', '', '', '', '', '', '', '0', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('3ud1OEe8NvPvsiL521t', 'Bj1dOzumfPeka4gL7K1', '02', '', '', '', '', '', '', '', '', '', '', '6', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('4ISF9eV9hcvS3I0wZxJ', 'rQjAiiWFZgsx47OJ7JW', '01', '08:30', '12:30', '14:00', '18:00', '', '', '', '', '', '', '5', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('AAGIvsNSrIgoxbUGfqZ', 'Bj1dOzumfPeka4gL7K1', '01', '00:00', '03:00', '04:00', '08:00', '23:00', '24:00', '', '', '', '', '1', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('bkGqyBJfmlZPgiTUFqI', 'rQjAiiWFZgsx47OJ7JW', '01', '08:30', '12:30', '14:00', '18:00', '', '', '', '', '', '', '3', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('bq61aorivB9w9lgIKp2', 'Bj1dOzumfPeka4gL7K1', '01', '00:00', '03:00', '04:00', '08:00', '23:00', '24:00', '', '', '', '', '3', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('bypQriwmHxC21YV4JnE', 'gEvtCLFnEILUE5RmWTH', '01', '00:00', '24:00', '', '', '', '', '', '', '', '', '0', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('fCXLw0MN4h2bz8qa852', 'gEvtCLFnEILUE5RmWTH', '01', '00:00', '24:00', '', '', '', '', '', '', '', '', '4', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('fnYdhpHwDNLpKhoKjN0', 'gEvtCLFnEILUE5RmWTH', '01', '00:00', '24:00', '', '', '', '', '', '', '', '', '3', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('gGZ4YPVn4rg1TudIqZD', 'gEvtCLFnEILUE5RmWTH', '01', '00:00', '24:00', '', '', '', '', '', '', '', '', '1', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('gJM19uXje6yy1y3IEtS', 'rQjAiiWFZgsx47OJ7JW', '01', '08:30', '12:30', '14:00', '18:00', '', '', '', '', '', '', '1', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('O4Fdpg03HXa14XaeHmG', 'Bj1dOzumfPeka4gL7K1', '01', '00:00', '03:00', '04:00', '08:00', '23:00', '24:00', '', '', '', '', '2', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('OiUKVBYfETk4shbyPNu', 'rQjAiiWFZgsx47OJ7JW', '01', '08:30', '12:30', '14:00', '18:00', '', '', '', '', '', '', '4', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('PInEw2YRgpSsT4pCBUW', 'gEvtCLFnEILUE5RmWTH', '01', '00:00', '24:00', '', '', '', '', '', '', '', '', '2', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('QjtyN4Tg9s1qSq8qqMi', 'rQjAiiWFZgsx47OJ7JW', '01', '08:30', '12:30', '14:00', '18:00', '', '', '', '', '', '', '2', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('S1N9Fe3PWDLkuNNQxCH', 'gEvtCLFnEILUE5RmWTH', '01', '00:00', '24:00', '', '', '', '', '', '', '', '', '5', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('tVKfcxaDfvQmY9Sy33w', 'Bj1dOzumfPeka4gL7K1', '01', '00:00', '03:00', '04:00', '08:00', '23:00', '24:00', '', '', '', '', '5', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('UjExoANZr58XC9EJ2Bt', 'gEvtCLFnEILUE5RmWTH', '01', '00:00', '24:00', '', '', '', '', '', '', '', '', '6', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('xqhtJCxioJezK3hWiW1', 'Bj1dOzumfPeka4gL7K1', '01', '00:00', '03:00', '04:00', '08:00', '23:00', '24:00', '', '', '', '', '4', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);
INSERT INTO `t_standardday` VALUES ('xu63NLZ3iNcbGPwKShk', 'rQjAiiWFZgsx47OJ7JW', '02', '', '', '', '', '', '', '', '', '', '', '6', '2023-03-14 11:16:05', null, '3CffNlgt9B9StIjIUPB', null, null);

-- ----------------------------
-- Table structure for t_synclog
-- ----------------------------
DROP TABLE IF EXISTS `t_synclog`;
CREATE TABLE `t_synclog` (
  `ID` varchar(255) NOT NULL,
  `ACTION` varchar(255) DEFAULT NULL,
  `ACTIONTIME` datetime(6) DEFAULT NULL,
  `TABLENAME` varchar(255) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `DATAOPERATION` longtext,
  `MSG` longtext,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_synclog
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `ID` varchar(255) NOT NULL,
  `CALENDAR` varchar(255) DEFAULT NULL,
  `LEVELS` int(11) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `SUPERIOR` varchar(255) DEFAULT NULL,
  `PROXYUSER` varchar(255) DEFAULT NULL,
  `DEFAULTDEPARTMENT` varchar(255) DEFAULT NULL,
  `DEFAULTAPPLICATION` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `LOGINNO` varchar(255) DEFAULT NULL,
  `LOGINPWD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NAME_LETTER` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(255) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `DOMAINID` varchar(255) DEFAULT NULL,
  `ISDOMAINUSER` varchar(255) DEFAULT NULL,
  `STARTPROXYTIME` datetime DEFAULT NULL,
  `ENDPROXYTIME` datetime DEFAULT NULL,
  `USEIM` bit(1) DEFAULT NULL,
  `ORDERBYNO` int(11) DEFAULT '10000',
  `LASTMODIFYPASSWORDTIME` datetime DEFAULT NULL,
  `PASSWORDARRAY` varchar(1000) DEFAULT NULL,
  `LOCKFLAG` int(11) DEFAULT '1',
  `PUBLICKEY` varchar(1000) DEFAULT NULL,
  `DIMISSION` int(11) DEFAULT '1',
  `AVATAR` text,
  `FAVORITE_CONTACTS` text,
  `PERMISSION_TYPE` varchar(255) DEFAULT NULL,
  `LIAISON_OFFICER` bit(1) DEFAULT b'0',
  `TELEPHONE2` varchar(255) DEFAULT NULL,
  `TELEPHONEPUBLIC` bit(1) DEFAULT NULL,
  `TELEPHONEPUBLIC2` bit(1) DEFAULT NULL,
  `EMAILPUBLIC` bit(1) DEFAULT NULL,
  `USERINFOPUBLIC` bit(1) DEFAULT NULL,
  `SIGNS` text,
  `USEHOMEPAGE` int(11) DEFAULT NULL,
  `USERSKIN` varchar(255) DEFAULT NULL,
  `USERSTYLE` varchar(255) DEFAULT NULL,
  `PENDINGSTYLE` text,
  `GENERALPAGE` text,
  `CONFIGURE` text,
  `COMMON_OPINION` text,
  `FIELD1` varchar(255) DEFAULT NULL,
  `FIELD2` varchar(255) DEFAULT NULL,
  `FIELD3` varchar(255) DEFAULT NULL,
  `FIELD4` varchar(255) DEFAULT NULL,
  `FIELD5` varchar(255) DEFAULT NULL,
  `FIELD6` varchar(255) DEFAULT NULL,
  `FIELD7` varchar(255) DEFAULT NULL,
  `FIELD8` varchar(255) DEFAULT NULL,
  `FIELD9` varchar(255) DEFAULT NULL,
  `FIELD10` varchar(255) DEFAULT NULL,
  `pwdErrorTimes` int(11) DEFAULT '0',
  `DDUSERID` varchar(255) DEFAULT NULL,
  `ID_NUMBER` varchar(255) DEFAULT NULL,
  `ID_TYPE` varchar(255) DEFAULT NULL,
  `showEmail` bit(1) DEFAULT b'0',
  `DEPARTMENTUSER` bit(1) DEFAULT b'0',
  `LASTMODIFYTIME` datetime(6) DEFAULT NULL,
  `FIELD11` varchar(255) DEFAULT NULL,
  `FIELD12` varchar(255) DEFAULT NULL,
  `FIELD13` varchar(255) DEFAULT NULL,
  `FIELD14` varchar(255) DEFAULT NULL,
  `FIELD15` varchar(255) DEFAULT NULL,
  `FIELD16` varchar(255) DEFAULT NULL,
  `FIELD17` varchar(255) DEFAULT NULL,
  `FIELD18` longtext,
  `FIELD19` longtext,
  `FIELD20` longtext,
  `FIELD21` varchar(255) DEFAULT NULL,
  `FIELD22` varchar(255) DEFAULT NULL,
  `FIELD23` varchar(255) DEFAULT NULL,
  `FIELD24` varchar(255) DEFAULT NULL,
  `FIELD25` varchar(255) DEFAULT NULL,
  `MANAGE_DEPARTMENTS` varchar(255) DEFAULT NULL,
  `INTERFACE_DEPARTMENTS` varchar(255) DEFAULT NULL,
  `VIEWSETTINGS` longtext,
  `FSUSERID` varchar(255) DEFAULT NULL,
  `SECRET` varchar(255) DEFAULT NULL,
  `ACCOUNTID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK94B9B0D6159C0DDD` (`SUPERIOR`) USING BTREE,
  KEY `FK94B9B0D65D082A65` (`PROXYUSER`) USING BTREE,
  KEY `index_ORDERBYNO` (`ORDERBYNO`) USING BTREE,
  KEY `index_NAME_LETTER` (`NAME_LETTER`) USING BTREE,
  CONSTRAINT `FK4bc57vqy9kdp0bwlu855y2w3w` FOREIGN KEY (`SUPERIOR`) REFERENCES `t_user` (`ID`),
  CONSTRAINT `FK94B9B0D6159C0DDD` FOREIGN KEY (`SUPERIOR`) REFERENCES `t_user` (`ID`),
  CONSTRAINT `FK94B9B0D65D082A65` FOREIGN KEY (`PROXYUSER`) REFERENCES `t_user` (`ID`),
  CONSTRAINT `FKb7e399kaa4djss77syqfyfypa` FOREIGN KEY (`PROXYUSER`) REFERENCES `t_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('crzTJNyZNpf9l62jxWG', 'rQjAiiWFZgsx47OJ7JW', '0', null, null, null, '__7AR6G1T02Nb55labPkr', null, null, null, null, '张三', 'zs', null, '1', '3CffNlgt9B9StIjIUPB', null, null, null, '\0', '0', null, null, '1', null, '1', null, null, 'public', '\0', null, '\0', '\0', '\0', '', null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', '', '', '', '0', null, null, null, '\0', '\0', '2023-11-21 03:55:15.276000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '[\"\"]', null, null, null, 'WqCXk2eI5BroiKLNz4n');
INSERT INTO `t_user` VALUES ('__oP0irhWXGA2oZRusW1d', 'rQjAiiWFZgsx47OJ7JW', '0', null, 'crzTJNyZNpf9l62jxWG', null, 'Z42xU8LmniRouZ93E7s', null, null, 'admin1', '77e96a2cf9f64ba925c01930367569dc1a665b61143560fd', '系统管理员', 'xtgly', null, '1', '3CffNlgt9B9StIjIUPB', 'true', null, null, '\0', '0', null, null, '1', null, '1', null, null, 'public', '\0', null, '', '', '\0', '', null, null, null, null, null, null, null, '[{\"id\":\"ccb1ff6b-3d70-4c57-b1c4-08be05bbe879\",\"content\":\"同意\"},{\"id\":\"933acc90-5e8a-4967-8000-6928063e99f2\",\"content\":\"批准\"},{\"id\":\"d83c1293-4cbc-4524-a1d2-f7c763634063\",\"content\":\"OK\"}]', '', '', '', '', '', '', '', '', '', '', '0', null, null, null, '\0', '\0', '2023-11-22 02:12:54.299000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '[\"\"]', '{\"hiddenColumns\":[],\"fixedColumns\":[],\"columnsWidth\":[{\"id\":\"__opfdGSKK9IF6CIHY2Up\",\"columns\":[{\"id\":\"__29c1M0BRz1xJjc47KjE\",\"showColumnWidth\":130}]}],\"searchCondition\":{}}', null, null, 'o8P0irhWXGA2oZ5t');

-- ----------------------------
-- Table structure for t_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `t_usergroup`;
CREATE TABLE `t_usergroup` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `OWNERID` varchar(255) DEFAULT NULL,
  `DOMAINID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_usergroup
-- ----------------------------
INSERT INTO `t_usergroup` VALUES ('8Pve8aiWmXi78OsmyRJ', '同事', 'rQfMeQJdjHQys5hZ85N', '3CffNlgt9B9StIjIUPB');
INSERT INTO `t_usergroup` VALUES ('BxWqrqiPRugAwoxD0yX', '主管', 'rQfMeQJdjHQys5hZ85N', '3CffNlgt9B9StIjIUPB');

-- ----------------------------
-- Table structure for t_user_defined
-- ----------------------------
DROP TABLE IF EXISTS `t_user_defined`;
CREATE TABLE `t_user_defined` (
  `ID` varchar(255) NOT NULL,
  `APPLICATIONID` varchar(255) DEFAULT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `TEMPLATESTYLE` text,
  `TEMPLATEELEMENT` text,
  `NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `DISPLAYTO` varchar(255) DEFAULT NULL,
  `ROLEIDS` text,
  `ROLENAMES` text,
  `CREATOR` varchar(255) DEFAULT NULL,
  `DEFINEMODE` int(11) DEFAULT NULL,
  `TEMPLATECONTEXT` text,
  `PUBLISHED` bit(1) DEFAULT NULL,
  `USEDDEFINED` int(11) DEFAULT NULL,
  `USUALSTARTMENUS` longtext,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_defined
-- ----------------------------
INSERT INTO `t_user_defined` VALUES ('402840888bedae07018befe47b410052', '__hDwZZTLdvTMp871Uf3J', '__oP0irhWXGA2oZRusW1d', null, '{\"appM\":[\"__0FeHhbUMQYjLpQKOH7g\"],\"appIcon\":[],\"appL\":[\"__TU39aIFd3rni6avXrvk\",\"__BTDkgYDtKQ6iyR6Cxs1\"],\"layoutStyle\":\"2:1\",\"appR\":[]}', null, null, null, null, null, '系统管理员', '16', null, '\0', '0', null);
INSERT INTO `t_user_defined` VALUES ('40288a037d51ffc7017d5201fa8a0000', null, '__oP0irhWXGA2oZRusW1d', null, '', null, null, null, null, null, '系统管理员', '16', null, '\0', '0', null);

-- ----------------------------
-- Table structure for t_user_department_role_set
-- ----------------------------
DROP TABLE IF EXISTS `t_user_department_role_set`;
CREATE TABLE `t_user_department_role_set` (
  `ID` varchar(255) NOT NULL,
  `DEPARTMENTID` varchar(255) DEFAULT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `ROLEID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK1AFB525D47838D52` (`USERID`) USING BTREE,
  KEY `index_ROLEID` (`ROLEID`) USING BTREE,
  KEY `index_DEPARTMENTID` (`DEPARTMENTID`) USING BTREE,
  CONSTRAINT `FK1AFB525D47838D52` FOREIGN KEY (`USERID`) REFERENCES `t_user` (`ID`),
  CONSTRAINT `FKsaoxtd828qc9r0fvb0b0breb0` FOREIGN KEY (`USERID`) REFERENCES `t_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_department_role_set
-- ----------------------------
INSERT INTO `t_user_department_role_set` VALUES ('1208d07d-cbcb-40ab-98e4-a9d74f1b684f', null, null, 'KMDEPTADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('24c23fd8-f27e-456d-908e-8eafb6814356', null, null, 'KMDEPTADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31b0000', 'Z42xU8LmniRouZ93E7s', null, 'c9G4aTyxKpSmkHylWfR');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31b0001', 'Z42xU8LmniRouZ93E7s', null, 'jcXfl8SjCTwmgC1BAAD');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31b0002', 'Z42xU8LmniRouZ93E7s', null, '6JnsDCJmsdvKLKNj1KB');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31b0003', 'Z42xU8LmniRouZ93E7s', null, 'AY0LZISRYzGNL3aSi0h');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31b0004', 'Z42xU8LmniRouZ93E7s', null, '__AuW2dQuBhd94LI4aNik');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0005', 'Z42xU8LmniRouZ93E7s', null, 'GIoAkTfhr9ryEaE0eRl');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0006', 'Z42xU8LmniRouZ93E7s', null, 'qBqfne3CIkcTKEZA0pv');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0007', 'Z42xU8LmniRouZ93E7s', null, 'Ip7GeBONZodtyivGfuy');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0008', 'Z42xU8LmniRouZ93E7s', null, 'N1RinPLzVAVr19n8zp4');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0009', 'Z42xU8LmniRouZ93E7s', null, 'osETf5DmYDRbS27jLbE');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c000a', 'Z42xU8LmniRouZ93E7s', null, 'ZmUbKW7Fqd8mfxwywzj');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c000b', 'Z42xU8LmniRouZ93E7s', null, 'Ye39OSputqcpg8RTUaC');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c000c', 'Z42xU8LmniRouZ93E7s', null, 'TUBUoSa3f7CozPzlOdu');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c000d', 'Z42xU8LmniRouZ93E7s', null, '7o3rCExlogqviPei7yy');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c000e', 'Z42xU8LmniRouZ93E7s', null, 'x727QbutsmBYSCAIuzk');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c000f', 'Z42xU8LmniRouZ93E7s', null, '__9dTYPVliNLBreew8B7C');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0010', 'Z42xU8LmniRouZ93E7s', null, '__jjUT9YizwvEorxsUYok');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0011', 'Z42xU8LmniRouZ93E7s', null, '__IW9uc46jwYfe1Sc9xhz');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0012', 'Z42xU8LmniRouZ93E7s', null, 'UELSgsHXdMcRKv8s1DW');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31c0013', 'Z42xU8LmniRouZ93E7s', null, 'PkMAB3hJbAuihJwwFgE');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31d0014', 'Z42xU8LmniRouZ93E7s', null, 'fBUXdkAlWTdGXqOq4cI');
INSERT INTO `t_user_department_role_set` VALUES ('2c9d9081845b4da601845b4ea31d0015', 'Z42xU8LmniRouZ93E7s', null, 'kxI25aTfrAdrsTpgFPO');
INSERT INTO `t_user_department_role_set` VALUES ('40286f818c38ac9c018c39021a630030', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__AcibCXsowZnswbmzHZJ');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fa0053', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__Y5He0dkTJWRvSInbn3L');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fa0054', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__e9xdPaH12N8wTqwOc7x');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fa0055', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__0wQYmwEcVEsrbyjoBky');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb0056', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__4xHCy1OLkxLR352itXd');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb0057', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__ETY3qekjpZtSKg32zwM');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb0058', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__BPaGTZfciKTYzeWG15b');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb0059', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__zKjDGTSa4wv8t7chAPY');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb005a', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__IQ10Vhxf3TEC09RBDRA');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb005b', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__SSSrEBNp1SMdQgrfYJZ');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb005c', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__d3FL37IfTuJcbhT7Eof');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb005d', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__4vSgvfLKjon99GNE6M4');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb005e', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__hmkYrGuBjpDnWSXdBHy');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb005f', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__N6ighCJEEzLj6D5cNg8');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb0060', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__MU2FR6RAedI0WK1fBYF');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb0061', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__9QVcyd6e5Ib0fySmK2z');
INSERT INTO `t_user_department_role_set` VALUES ('402840888bedae07018bf00499fb0062', '__7AR6G1T02Nb55labPkr', 'crzTJNyZNpf9l62jxWG', '__Qqq16SKITEElz9SULfD');
INSERT INTO `t_user_department_role_set` VALUES ('40286f818c38ac9c018c390219f8002d', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__AcibCXsowZnswbmzHZJ');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddc0000', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__hmkYrGuBjpDnWSXdBHy');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddc0001', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__9QVcyd6e5Ib0fySmK2z');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd0002', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__N6ighCJEEzLj6D5cNg8');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd0003', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__ngR1kNvJp4vtIT6X0Fx');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd0004', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__j31HTTQulTol2bc5gfe');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd0005', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__dHvkktK4z7Z7AUCXVHr');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd0006', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__5mBkWfvvbx5t0wEJ2TD');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd0007', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', 'KMDEPTADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd0008', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__67ofEfOKLR8GMYDZXSZ');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd0009', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__BHrNdgn0iwJCDxb1fHK');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd000a', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__bQLhnXqcPb16ALq17l3');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddd000b', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__4DaVq4e4ibxZHFXqWBm');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146dde000c', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', 'KMCOMMITTEEADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146dde000d', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__9uvCqbMNDG6xhPchBLU');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146dde000e', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__vsVEprPtjKGLDuQiUM2');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146dde000f', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__wW4uoNhviDccpNM9bW0');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146dde0010', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__3pfjy1lc2FXmaukSglj');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146dde0011', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__SSSrEBNp1SMdQgrfYJZ');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146dde0012', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__GAzXRq0bkdtxl6f5vrl');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146dde0013', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__4vSgvfLKjon99GNE6M4');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddf0014', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__4xHCy1OLkxLR352itXd');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddf0015', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__793Hn9xULfelm6SsiyX');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddf0016', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__RHaRvKaQQb5xuiWhkKQ');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddf0017', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__hXivFZ1qYvasNoJ0Xh4');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddf0018', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__qa1DuFsoX3wa4yJybbt');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddf0019', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__MU2FR6RAedI0WK1fBYF');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146ddf001a', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__DruXvdfPft2uvV63HuR');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de0001b', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', 'KMSUPERADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de0001c', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__ETY3qekjpZtSKg32zwM');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de0001d', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__0CcqOxCq9Rzr3GBgxey');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de0001e', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__RjrXR1mlscSfYcGUzS0');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de0001f', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__vITw58aXJYBLoUp1FKQ');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de00020', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__0wTxEGpWxpXTZtBTJQm');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de00021', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__Qqq16SKITEElz9SULfD');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de00022', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__IQ10Vhxf3TEC09RBDRA');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de00023', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__Olo7NdBTTBp3ut0MDe7');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de10024', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__zKjDGTSa4wv8t7chAPY');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de10025', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__29NH8IPWlJO4ylxT3n2');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de10026', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', 'KMNORMALROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de10027', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__Ea53MRykPw79zxZl0QI');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de10028', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__l9XQoNljNSl5ETRluW7');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de10029', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__0wQYmwEcVEsrbyjoBky');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de1002a', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__fmS4of12oyo6yxMmtNm');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de1002b', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__IBEqolS7OGbNOiudDn5');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de1002c', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__d3FL37IfTuJcbhT7Eof');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de2002d', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__X2e5P27K57VlERLOVxq');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de2002e', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__3zxJ7SZmPviMOqgJwfj');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de2002f', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__zJMgwhseRHYiisjevQT');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20030', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__7rcsGeVL2CnjmBytAsP');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20031', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__U6ebKbHbzUJVC3hmdTL');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20032', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__irAMYJDbi5UdRGNjjM6');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20033', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__FobNNEtmy155WLoL5yS');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20034', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__ev0hlPmuzRwjW8dyLws');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20035', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__xB94fZY8yvcwWgW7RGK');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20036', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__Y5He0dkTJWRvSInbn3L');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20037', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__kTGaoEGmIUKyeeV1fcN');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de20038', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__BPaGTZfciKTYzeWG15b');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de30039', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__j3thgu9azYEAUijW5cz');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de3003a', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__4kBoTlRv0jRKiJcxpeP');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de3003b', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__o3p6DYGGmHixRtuN8OG');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de3003c', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__chzjlZ26MXd1lfM4Rob');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de3003d', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__FIjfsqGFYEYuvpIHB6e');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de3003e', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__e9xdPaH12N8wTqwOc7x');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de3003f', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__ypYHcTG6tHoO8YoHE4x');
INSERT INTO `t_user_department_role_set` VALUES ('402850888bf0412a018bf1146de30040', 'Z42xU8LmniRouZ93E7s', '__oP0irhWXGA2oZRusW1d', '__axhGBqwgFMLnOePsVTN');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7070000', 'Z42xU8LmniRouZ93E7s', null, '__RHaRvKaQQb5xuiWhkKQ');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7110001', 'Z42xU8LmniRouZ93E7s', null, 'jcXfl8SjCTwmgC1BAAD');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7110002', 'Z42xU8LmniRouZ93E7s', null, '__jjUT9YizwvEorxsUYok');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7110003', 'Z42xU8LmniRouZ93E7s', null, 'x727QbutsmBYSCAIuzk');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120004', 'Z42xU8LmniRouZ93E7s', null, '__AuW2dQuBhd94LI4aNik');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120005', 'Z42xU8LmniRouZ93E7s', null, '__DruXvdfPft2uvV63HuR');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120006', 'Z42xU8LmniRouZ93E7s', null, '__7rcsGeVL2CnjmBytAsP');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120007', 'Z42xU8LmniRouZ93E7s', null, 'KMCOMMITTEEADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120008', 'Z42xU8LmniRouZ93E7s', null, 'AY0LZISRYzGNL3aSi0h');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120009', 'Z42xU8LmniRouZ93E7s', null, 'UELSgsHXdMcRKv8s1DW');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e712000a', 'Z42xU8LmniRouZ93E7s', null, 'ZmUbKW7Fqd8mfxwywzj');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e712000b', 'Z42xU8LmniRouZ93E7s', null, 'c9G4aTyxKpSmkHylWfR');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e712000c', 'Z42xU8LmniRouZ93E7s', null, 'KMDEPTADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e712000d', 'Z42xU8LmniRouZ93E7s', null, '__ev0hlPmuzRwjW8dyLws');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e712000e', 'Z42xU8LmniRouZ93E7s', null, 'osETf5DmYDRbS27jLbE');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e712000f', 'Z42xU8LmniRouZ93E7s', null, '6JnsDCJmsdvKLKNj1KB');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120010', 'Z42xU8LmniRouZ93E7s', null, 'KMNORMALROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120011', 'Z42xU8LmniRouZ93E7s', null, 'kxI25aTfrAdrsTpgFPO');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7120012', 'Z42xU8LmniRouZ93E7s', null, '__9dTYPVliNLBreew8B7C');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130013', 'Z42xU8LmniRouZ93E7s', null, 'Ip7GeBONZodtyivGfuy');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130014', 'Z42xU8LmniRouZ93E7s', null, '__9QVcyd6e5Ib0fySmK2z');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130015', 'Z42xU8LmniRouZ93E7s', null, '__ypYHcTG6tHoO8YoHE4x');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130016', 'Z42xU8LmniRouZ93E7s', null, 'PkMAB3hJbAuihJwwFgE');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130017', 'Z42xU8LmniRouZ93E7s', null, '__ngR1kNvJp4vtIT6X0Fx');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130018', 'Z42xU8LmniRouZ93E7s', null, 'GIoAkTfhr9ryEaE0eRl');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130019', 'Z42xU8LmniRouZ93E7s', null, 'Ye39OSputqcpg8RTUaC');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e713001a', 'Z42xU8LmniRouZ93E7s', null, 'fBUXdkAlWTdGXqOq4cI');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e713001b', 'Z42xU8LmniRouZ93E7s', null, '7o3rCExlogqviPei7yy');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e713001c', 'Z42xU8LmniRouZ93E7s', null, '__IW9uc46jwYfe1Sc9xhz');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e713001d', 'Z42xU8LmniRouZ93E7s', null, 'qBqfne3CIkcTKEZA0pv');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e713001e', 'Z42xU8LmniRouZ93E7s', null, '__0wTxEGpWxpXTZtBTJQm');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e713001f', 'Z42xU8LmniRouZ93E7s', null, 'TUBUoSa3f7CozPzlOdu');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130020', 'Z42xU8LmniRouZ93E7s', null, 'N1RinPLzVAVr19n8zp4');
INSERT INTO `t_user_department_role_set` VALUES ('4028808586875f5801868761e7130021', 'Z42xU8LmniRouZ93E7s', null, 'KMSUPERADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417cff0000', 'Z42xU8LmniRouZ93E7s', null, 'TUBUoSa3f7CozPzlOdu');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040001', 'Z42xU8LmniRouZ93E7s', null, '__ngR1kNvJp4vtIT6X0Fx');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040002', 'Z42xU8LmniRouZ93E7s', null, '__0wTxEGpWxpXTZtBTJQm');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040003', 'Z42xU8LmniRouZ93E7s', null, 'GIoAkTfhr9ryEaE0eRl');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040004', 'Z42xU8LmniRouZ93E7s', null, 'KMNORMALROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040005', 'Z42xU8LmniRouZ93E7s', null, '__jjUT9YizwvEorxsUYok');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040006', 'Z42xU8LmniRouZ93E7s', null, '__DruXvdfPft2uvV63HuR');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040007', 'Z42xU8LmniRouZ93E7s', null, 'ZmUbKW7Fqd8mfxwywzj');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040008', 'Z42xU8LmniRouZ93E7s', null, '__SSSrEBNp1SMdQgrfYJZ');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d040009', 'Z42xU8LmniRouZ93E7s', null, '__IW9uc46jwYfe1Sc9xhz');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d05000a', 'Z42xU8LmniRouZ93E7s', null, 'x727QbutsmBYSCAIuzk');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d05000b', 'Z42xU8LmniRouZ93E7s', null, '__9QVcyd6e5Ib0fySmK2z');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d05000c', 'Z42xU8LmniRouZ93E7s', null, 'fBUXdkAlWTdGXqOq4cI');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d05000d', 'Z42xU8LmniRouZ93E7s', null, 'c9G4aTyxKpSmkHylWfR');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d05000e', 'Z42xU8LmniRouZ93E7s', null, 'KMDEPTADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d05000f', 'Z42xU8LmniRouZ93E7s', null, '__ev0hlPmuzRwjW8dyLws');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050010', 'Z42xU8LmniRouZ93E7s', null, 'jcXfl8SjCTwmgC1BAAD');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050011', 'Z42xU8LmniRouZ93E7s', null, 'UELSgsHXdMcRKv8s1DW');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050012', 'Z42xU8LmniRouZ93E7s', null, '__RHaRvKaQQb5xuiWhkKQ');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050013', 'Z42xU8LmniRouZ93E7s', null, '__9dTYPVliNLBreew8B7C');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050014', 'Z42xU8LmniRouZ93E7s', null, 'qBqfne3CIkcTKEZA0pv');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050015', 'Z42xU8LmniRouZ93E7s', null, '6JnsDCJmsdvKLKNj1KB');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050016', 'Z42xU8LmniRouZ93E7s', null, 'AY0LZISRYzGNL3aSi0h');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050017', 'Z42xU8LmniRouZ93E7s', null, 'Ip7GeBONZodtyivGfuy');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050018', 'Z42xU8LmniRouZ93E7s', null, 'osETf5DmYDRbS27jLbE');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d050019', 'Z42xU8LmniRouZ93E7s', null, '__7rcsGeVL2CnjmBytAsP');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d05001a', 'Z42xU8LmniRouZ93E7s', null, '__AuW2dQuBhd94LI4aNik');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d05001b', 'Z42xU8LmniRouZ93E7s', null, 'N1RinPLzVAVr19n8zp4');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d06001c', 'Z42xU8LmniRouZ93E7s', null, 'KMSUPERADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d06001d', 'Z42xU8LmniRouZ93E7s', null, 'PkMAB3hJbAuihJwwFgE');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d06001e', 'Z42xU8LmniRouZ93E7s', null, 'Ye39OSputqcpg8RTUaC');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d06001f', 'Z42xU8LmniRouZ93E7s', null, '7o3rCExlogqviPei7yy');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d060020', 'Z42xU8LmniRouZ93E7s', null, 'kxI25aTfrAdrsTpgFPO');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d060021', 'Z42xU8LmniRouZ93E7s', null, 'KMCOMMITTEEADMINROLEID');
INSERT INTO `t_user_department_role_set` VALUES ('4028b086869b1e4201869b417d060022', 'Z42xU8LmniRouZ93E7s', null, '__ypYHcTG6tHoO8YoHE4x');

-- ----------------------------
-- Table structure for t_user_group_set
-- ----------------------------
DROP TABLE IF EXISTS `t_user_group_set`;
CREATE TABLE `t_user_group_set` (
  `ID` varchar(255) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `USERGROUPID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_group_set
-- ----------------------------
INSERT INTO `t_user_group_set` VALUES ('BgsJDVHkrBQw0sVy12D', '2TE7lzsbdyqLhndabbN', 'BxWqrqiPRugAwoxD0yX');
INSERT INTO `t_user_group_set` VALUES ('FLJs5NnyyHdugL63dsq', '0JyBHSIZPmSOQpQwd1K', '8Pve8aiWmXi78OsmyRJ');
INSERT INTO `t_user_group_set` VALUES ('G2DF36Hox6sxD5vIA8y', '0URvyCUds2T4PGx4yLB', '8Pve8aiWmXi78OsmyRJ');
INSERT INTO `t_user_group_set` VALUES ('JnlDqGtGo2h7vbWrETC', '2wWhjOlremYrtCPLBvw', 'BxWqrqiPRugAwoxD0yX');
