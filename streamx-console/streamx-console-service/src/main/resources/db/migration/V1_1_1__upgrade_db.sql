SET FOREIGN_KEY_CHECKS = 0;
<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> 1b6f8708541574dd542a626cd92f298cc871bd67
-- ----------------------------
-- Table structure for t_setting
-- ----------------------------
update `t_setting` set `id` = `id` + 1 where `id` > 6;
=======

-- ----------------------------
-- Table structure for t_setting
-- ----------------------------
update `t_setting` set `NUM` = `NUM` + 1 where `NUM` > 6;
>>>>>>> aa1d5ac1543df4b4096b72d340e4107c17a670f4

update `t_setting` set `KEY` = 'alert.email.userName',`TITLE`='Alert  Email User', DESCRIPTION='用来发送告警邮箱的认证用户名' where `KEY` = 'alert.email.address';

update `t_setting` set `DESCRIPTION`= '用来发送告警邮箱的认证密码' where `KEY` = 'alert.email.password';

INSERT INTO `t_setting` VALUES (7, 'alert.email.from', NULL, 'Alert  Email From', '发送告警的邮箱', 1);

<<<<<<< HEAD
=======
-- ----------------------------
-- Table structure for t_flink_app
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
`ID` bigint NOT NULL AUTO_INCREMENT,
`APP_ID` bigint DEFAULT NULL,
`USER_ID` bigint DEFAULT NULL,
`TYPE` tinyint DEFAULT NULL,
`TITLE` varchar(255) DEFAULT NULL,
`CONTEXT` text DEFAULT NULL,
`READED` tinyint DEFAULT '0',
`CREATE_TIME` datetime DEFAULT NULL,
PRIMARY KEY (`ID`) USING BTREE,
KEY `INX_USER_ID` (`USER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

>>>>>>> aa1d5ac1543df4b4096b72d340e4107c17a670f4
SET FOREIGN_KEY_CHECKS = 1;
