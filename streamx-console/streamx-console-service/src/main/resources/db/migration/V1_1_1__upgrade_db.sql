SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_setting
-- ----------------------------
<<<<<<< HEAD
update `t_setting` set `NUM` = `NUM` + 1 where `NUM` > 6;

update `t_setting` set `KEY` = 'alert.email.userName',`TITLE`='Alert  Email User', DESCRIPTION='用来发送告警邮箱的认证用户名' where `KEY` = 'alert.email.address';

update `t_setting` set `DESCRIPTION`= '用来发送告警邮箱的认证密码' where `KEY` = 'alert.email.password';

INSERT INTO `t_setting` VALUES (7, 'alert.email.from', NULL, 'Alert  Email From', '发送告警的邮箱', 1);
=======
update `t_setting` set `id` = `id` + 1 where `id` > 6;

update `t_setting` set `KEY` = 'alert.email.sender', DESCRIPTION='用来发送告警邮箱的认证用户名' where `KEY` = 'alert.email.address';

update `t_setting` set `DESCRIPTION`= '用来发送告警邮箱的认证密码' where `KEY` = 'alert.email.password';

INSERT INTO `t_setting` VALUES (7, 'alert.email.from', NULL, 'Alert  Email From', '告警邮箱发送人', 1);
>>>>>>> 81ae37fb... [bugfix] sent email bug fixed.

SET FOREIGN_KEY_CHECKS = 1;
