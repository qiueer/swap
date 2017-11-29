/*
 Navicat Premium Data Transfer

 Source Server         : ubuntu-vm-django
 Source Server Type    : MySQL
 Source Server Version : 50541
 Source Host           : 192.168.253.130
 Source Database       : db_jobtask

 Target Server Type    : MySQL
 Target Server Version : 50541
 File Encoding         : utf-8

 Date: 11/30/2017 06:56:01 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `auth_permission`
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry'), ('2', 'Can change log entry', '1', 'change_logentry'), ('3', 'Can delete log entry', '1', 'delete_logentry'), ('4', 'Can add group', '2', 'add_group'), ('5', 'Can change group', '2', 'change_group'), ('6', 'Can delete group', '2', 'delete_group'), ('7', 'Can add permission', '3', 'add_permission'), ('8', 'Can change permission', '3', 'change_permission'), ('9', 'Can delete permission', '3', 'delete_permission'), ('10', 'Can add user', '4', 'add_user'), ('11', 'Can change user', '4', 'change_user'), ('12', 'Can delete user', '4', 'delete_user'), ('13', 'Can add content type', '5', 'add_contenttype'), ('14', 'Can change content type', '5', 'change_contenttype'), ('15', 'Can delete content type', '5', 'delete_contenttype'), ('16', 'Can add session', '6', 'add_session'), ('17', 'Can change session', '6', 'change_session'), ('18', 'Can delete session', '6', 'delete_session'), ('19', 'Can add test', '7', 'add_test'), ('20', 'Can change test', '7', 'change_test'), ('21', 'Can delete test', '7', 'delete_test'), ('22', 'Can add book', '8', 'add_book'), ('23', 'Can change book', '8', 'change_book'), ('24', 'Can delete book', '8', 'delete_book'), ('25', 'Can add publisher', '9', 'add_publisher'), ('26', 'Can change publisher', '9', 'change_publisher'), ('27', 'Can delete publisher', '9', 'delete_publisher'), ('28', 'Can add author', '10', 'add_author'), ('29', 'Can change author', '10', 'change_author'), ('30', 'Can delete author', '10', 'delete_author'), ('31', 'Can add task', '11', 'add_task'), ('32', 'Can change task', '11', 'change_task'), ('33', 'Can delete task', '11', 'delete_task'), ('34', 'Can add res_ control_ conf', '12', 'add_res_control_conf'), ('35', 'Can change res_ control_ conf', '12', 'change_res_control_conf'), ('36', 'Can delete res_ control_ conf', '12', 'delete_res_control_conf'), ('37', 'Can add salt minion', '13', 'add_saltminion'), ('38', 'Can change salt minion', '13', 'change_saltminion'), ('39', 'Can delete salt minion', '13', 'delete_saltminion'), ('40', 'Can add comm job task config', '14', 'add_commjobtaskconfig'), ('41', 'Can change comm job task config', '14', 'change_commjobtaskconfig'), ('42', 'Can delete comm job task config', '14', 'delete_commjobtaskconfig'), ('43', 'Can add job status', '15', 'add_jobstatus'), ('44', 'Can change job status', '15', 'change_jobstatus'), ('45', 'Can delete job status', '15', 'delete_jobstatus'), ('46', 'Can add task_ def', '16', 'add_task_def'), ('47', 'Can change task_ def', '16', 'change_task_def'), ('48', 'Can delete task_ def', '16', 'delete_task_def'), ('49', 'Can add sub task', '17', 'add_subtask'), ('50', 'Can change sub task', '17', 'change_subtask'), ('51', 'Can delete sub task', '17', 'delete_subtask'), ('52', 'Can add comm_ task_ def', '18', 'add_comm_task_def'), ('53', 'Can change comm_ task_ def', '18', 'change_comm_task_def'), ('54', 'Can delete comm_ task_ def', '18', 'delete_comm_task_def'), ('55', 'Can add job class', '19', 'add_jobclass'), ('56', 'Can change job class', '19', 'change_jobclass'), ('57', 'Can delete job class', '19', 'delete_jobclass'), ('58', 'Can add job', '20', 'add_job'), ('59', 'Can change job', '20', 'change_job'), ('60', 'Can delete job', '20', 'delete_job'), ('61', 'Can add job_ task', '21', 'add_job_task'), ('62', 'Can change job_ task', '21', 'change_job_task'), ('63', 'Can delete job_ task', '21', 'delete_job_task'), ('64', 'Can add comm_ job_ def', '22', 'add_comm_job_def'), ('65', 'Can change comm_ job_ def', '22', 'change_comm_job_def'), ('66', 'Can delete comm_ job_ def', '22', 'delete_comm_job_def'), ('67', 'Can add job_ sub task', '23', 'add_job_subtask'), ('68', 'Can change job_ sub task', '23', 'change_job_subtask'), ('69', 'Can delete job_ sub task', '23', 'delete_job_subtask'), ('70', 'Can add job type', '24', 'add_jobtype'), ('71', 'Can change job type', '24', 'change_jobtype'), ('72', 'Can delete job type', '24', 'delete_jobtype');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `auth_user`
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$3b6L27KTgLrO$hvG8PHQsHLcq+k7rtWUjwtSXJ19jHRMm5aHWU8L6xWY=', '2017-11-26 14:48:27', '1', 'admin', '', '', 'qiueer@qq.com', '1', '1', '2017-11-22 14:45:58'), ('2', 'pbkdf2_sha256$36000$mhXygBCfwWCc$tokfkQI55NR3e6miU2tMe+/cahoTn8Ip03hUHepBvxU=', null, '0', 'qiueer', '', '', 'qiueer@qq.com', '0', '1', '2017-11-22 14:46:50');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `book_author`
-- ----------------------------
DROP TABLE IF EXISTS `book_author`;
CREATE TABLE `book_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `book_book`
-- ----------------------------
DROP TABLE IF EXISTS `book_book`;
CREATE TABLE `book_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_book_publisher_id_7f77c06a_fk_book_publisher_id` (`publisher_id`),
  CONSTRAINT `book_book_publisher_id_7f77c06a_fk_book_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `book_publisher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `book_book_authors`
-- ----------------------------
DROP TABLE IF EXISTS `book_book_authors`;
CREATE TABLE `book_book_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_book_authors_book_id_author_id_652071c2_uniq` (`book_id`,`author_id`),
  KEY `book_book_authors_author_id_dc6a47c1_fk_book_author_id` (`author_id`),
  CONSTRAINT `book_book_authors_book_id_2a4a45bb_fk_book_book_id` FOREIGN KEY (`book_id`) REFERENCES `book_book` (`id`),
  CONSTRAINT `book_book_authors_author_id_dc6a47c1_fk_book_author_id` FOREIGN KEY (`author_id`) REFERENCES `book_author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `book_publisher`
-- ----------------------------
DROP TABLE IF EXISTS `book_publisher`;
CREATE TABLE `book_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `addr` varchar(128) NOT NULL,
  `city` varchar(32) NOT NULL,
  `country` varchar(64) NOT NULL,
  `state_province` varchar(32) NOT NULL,
  `website` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `comm_job_def`
-- ----------------------------
DROP TABLE IF EXISTS `comm_job_def`;
CREATE TABLE `comm_job_def` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobtype` int(11) NOT NULL,
  `func` longtext NOT NULL,
  `create_user` varchar(64) NOT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` datetime DEFAULT NULL,
  `note` longtext NOT NULL,
  `job_class_id` int(11) NOT NULL,
  `job_status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comm_job_def_job_class_id_f1e475f0_fk_job_class_id` (`job_class_id`),
  KEY `comm_job_def_job_status_id_8558e323_fk_job_status_id` (`job_status_id`),
  CONSTRAINT `comm_job_def_job_status_id_8558e323_fk_job_status_id` FOREIGN KEY (`job_status_id`) REFERENCES `job_status` (`id`),
  CONSTRAINT `comm_job_def_job_class_id_f1e475f0_fk_job_class_id` FOREIGN KEY (`job_class_id`) REFERENCES `job_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `comm_job_def`
-- ----------------------------
BEGIN;
INSERT INTO `comm_job_def` VALUES ('4', '2', 'job-2', 'admin', '2017-11-23 06:10:10', '2017-11-23 06:50:13', 'job-2', '2', '1'), ('5', '2', 'job-2', 'admin', '2017-11-23 06:10:53', '2017-11-23 06:16:58', 'job-2', '2', '1'), ('6', '2', 'GDFD', 'admin', '2017-11-29 22:30:17', '2017-11-29 22:30:17', 'EEEE', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `comm_job_task_config`
-- ----------------------------
DROP TABLE IF EXISTS `comm_job_task_config`;
CREATE TABLE `comm_job_task_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_dt` datetime NOT NULL,
  `comm_job_id` int(11) NOT NULL,
  `comm_task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comm_job_task_config_comm_job_id_d646ccfb_fk_comm_job_def_id` (`comm_job_id`),
  KEY `comm_job_task_config_comm_task_id_c7efe04b_fk_comm_task_def_id` (`comm_task_id`),
  CONSTRAINT `comm_job_task_config_comm_task_id_c7efe04b_fk_comm_task_def_id` FOREIGN KEY (`comm_task_id`) REFERENCES `comm_task_def` (`id`),
  CONSTRAINT `comm_job_task_config_comm_job_id_d646ccfb_fk_comm_job_def_id` FOREIGN KEY (`comm_job_id`) REFERENCES `comm_job_def` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `comm_job_task_config`
-- ----------------------------
BEGIN;
INSERT INTO `comm_job_task_config` VALUES ('11', '2017-11-22 22:16:58', '5', '3'), ('12', '2017-11-22 22:16:58', '5', '1'), ('63', '2017-11-22 22:50:13', '4', '7'), ('64', '2017-11-22 22:50:13', '4', '1'), ('65', '2017-11-22 22:50:13', '4', '3'), ('66', '2017-11-29 14:30:17', '6', '2'), ('67', '2017-11-29 14:30:17', '6', '1');
COMMIT;

-- ----------------------------
--  Table structure for `comm_task_def`
-- ----------------------------
DROP TABLE IF EXISTS `comm_task_def`;
CREATE TABLE `comm_task_def` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tasktype` int(11) NOT NULL,
  `params` longtext,
  `iphosts` longtext NOT NULL,
  `exe_user` varchar(64) NOT NULL,
  `timeout` int(11) NOT NULL,
  `func` longtext NOT NULL,
  `create_user` varchar(64) NOT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` datetime DEFAULT NULL,
  `note` longtext NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comm_task_def_task_id_6cb29827_fk_task_def_id` (`task_id`),
  CONSTRAINT `comm_task_def_task_id_6cb29827_fk_task_def_id` FOREIGN KEY (`task_id`) REFERENCES `task_def` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `comm_task_def`
-- ----------------------------
BEGIN;
INSERT INTO `comm_task_def` VALUES ('1', '2', 'haode', '127.0.0.1', 'wls81', '20', 'wrap my wrap', 'admin', '2017-11-22 22:58:24', '2017-11-22 22:58:24', 't', '3'), ('2', '2', 'echo', '127.0.0.1;127.0.0.2', 'wls81', '4', 'just echo', 'admin', '2017-11-22 22:58:49', '2017-11-22 22:58:49', 'tt', '1'), ('3', '2', 'bcde', '127.0.0.2', 'wls81', '7', 'just print bcde', 'admin', '2017-11-22 22:59:20', '2017-11-22 22:59:20', 'aaa', '2'), ('4', '2', 'aa', '127.0.0.1', 'root', '3', 'wrap', 'admin', '2017-11-23 06:38:03', '2017-11-23 06:38:03', 'wrap', '3'), ('5', '2', 'bb', '127.0.0.1;127.0.0.2', 'root', '3', 'ABC', 'admin', '2017-11-23 06:38:32', '2017-11-23 06:38:32', 'ABC', '2'), ('6', '2', 'bb', '127.0.0.1;127.0.0.2', 'root', '6', 'XYZ', 'admin', '2017-11-23 06:38:54', '2017-11-23 06:38:54', 'XYZ', '1'), ('7', '2', 'W', '127.0.0.1;127.0.0.2', 'deployop', '6', 'DEF', 'admin', '2017-11-23 06:39:35', '2017-11-23 06:39:35', 'DEF', '3'), ('8', '2', 'HYAHA', '127.0.0.1', 'deployop', '8', 'HAHA', 'admin', '2017-11-23 06:40:13', '2017-11-23 06:40:13', 'HAHA', '2'), ('9', '2', 'AHDD', '127.0.0.1', 'deployop', '8', 'EN_EN', 'admin', '2017-11-23 06:40:45', '2017-11-23 06:40:45', 'EN_EN', '1');
COMMIT;

-- ----------------------------
--  Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_admin_log`
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES ('1', '2017-11-22 14:52:36', '1', '100', '1', '[{\"added\": {}}]', '12', '1'), ('2', '2017-11-22 14:57:13', '1', '127.0.0.1', '1', '[{\"added\": {}}]', '13', '1'), ('3', '2017-11-22 14:57:43', '2', '127.0.0.2', '1', '[{\"added\": {}}]', '13', '1'), ('4', '2017-11-22 15:01:26', '1', 'Nginx操作', '1', '[{\"added\": {}}]', '19', '1'), ('5', '2017-11-22 15:01:52', '1', 'Tomcat 操作', '2', '[{\"changed\": {\"fields\": [\"jobclass\", \"jobclass_cn\", \"create_dt\", \"note\"]}}]', '19', '1'), ('6', '2017-11-22 15:02:22', '2', 'Nginx操作', '1', '[{\"added\": {}}]', '19', '1'), ('7', '2017-11-22 15:03:19', '1', '启用 ', '1', '[{\"added\": {}}]', '15', '1'), ('8', '2017-11-22 15:03:39', '2', '暂停 ', '1', '[{\"added\": {}}]', '15', '1');
COMMIT;

-- ----------------------------
--  Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_content_type`
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry'), ('2', 'auth', 'group'), ('3', 'auth', 'permission'), ('4', 'auth', 'user'), ('10', 'book', 'author'), ('8', 'book', 'book'), ('9', 'book', 'publisher'), ('5', 'contenttypes', 'contenttype'), ('14', 'jobtask', 'commjobtaskconfig'), ('22', 'jobtask', 'comm_job_def'), ('18', 'jobtask', 'comm_task_def'), ('20', 'jobtask', 'job'), ('19', 'jobtask', 'jobclass'), ('15', 'jobtask', 'jobstatus'), ('24', 'jobtask', 'jobtype'), ('23', 'jobtask', 'job_subtask'), ('21', 'jobtask', 'job_task'), ('12', 'jobtask', 'res_control_conf'), ('13', 'jobtask', 'saltminion'), ('17', 'jobtask', 'subtask'), ('11', 'jobtask', 'task'), ('16', 'jobtask', 'task_def'), ('6', 'sessions', 'session'), ('7', 'testModel', 'test');
COMMIT;

-- ----------------------------
--  Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `django_migrations`
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-11-22 14:44:18'), ('2', 'auth', '0001_initial', '2017-11-22 14:44:18'), ('3', 'admin', '0001_initial', '2017-11-22 14:44:18'), ('4', 'admin', '0002_logentry_remove_auto_add', '2017-11-22 14:44:18'), ('5', 'contenttypes', '0002_remove_content_type_name', '2017-11-22 14:44:18'), ('6', 'auth', '0002_alter_permission_name_max_length', '2017-11-22 14:44:18'), ('7', 'auth', '0003_alter_user_email_max_length', '2017-11-22 14:44:18'), ('8', 'auth', '0004_alter_user_username_opts', '2017-11-22 14:44:18'), ('9', 'auth', '0005_alter_user_last_login_null', '2017-11-22 14:44:18'), ('10', 'auth', '0006_require_contenttypes_0002', '2017-11-22 14:44:18'), ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-11-22 14:44:18'), ('12', 'auth', '0008_alter_user_username_max_length', '2017-11-22 14:44:18'), ('13', 'book', '0001_initial', '2017-11-22 14:44:18'), ('14', 'book', '0002_auto_20170807_1232', '2017-11-22 14:44:18'), ('15', 'book', '0003_auto_20170807_1234', '2017-11-22 14:44:18'), ('16', 'book', '0004_auto_20170807_1258', '2017-11-22 14:44:18'), ('17', 'book', '0005_auto_20170807_1300', '2017-11-22 14:44:18'), ('18', 'book', '0006_auto_20170826_0647', '2017-11-22 14:44:18'), ('19', 'jobtask', '0001_initial', '2017-11-22 14:44:19'), ('20', 'sessions', '0001_initial', '2017-11-22 14:44:19'), ('21', 'testModel', '0001_initial', '2017-11-22 14:44:19');
COMMIT;

-- ----------------------------
--  Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `job`
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobid` varchar(64) NOT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` datetime DEFAULT NULL,
  `create_user` varchar(64) DEFAULT NULL,
  `job_status` smallint(6) NOT NULL,
  `job_class_id` int(11) NOT NULL,
  `jobdef_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobid_idx` (`jobid`),
  KEY `job_job_class_id_8cdb2770_fk_job_class_id` (`job_class_id`),
  KEY `job_jobdef_id_3f4227b4_fk_comm_job_def_id` (`jobdef_id`),
  CONSTRAINT `job_jobdef_id_3f4227b4_fk_comm_job_def_id` FOREIGN KEY (`jobdef_id`) REFERENCES `comm_job_def` (`id`),
  CONSTRAINT `job_job_class_id_8cdb2770_fk_job_class_id` FOREIGN KEY (`job_class_id`) REFERENCES `job_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `job`
-- ----------------------------
BEGIN;
INSERT INTO `job` VALUES ('1', '20171124230622660', '2017-11-24 15:06:22', null, 'admin', '2', '2', '5'), ('2', '20171124230629481', '2017-11-24 15:06:29', null, 'admin', '2', '2', '5'), ('3', '20171129223033297', '2017-11-29 14:30:33', null, 'admin', '2', '1', '6');
COMMIT;

-- ----------------------------
--  Table structure for `job_class`
-- ----------------------------
DROP TABLE IF EXISTS `job_class`;
CREATE TABLE `job_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobclass` varchar(32) NOT NULL,
  `jobclass_cn` varchar(32) NOT NULL,
  `create_user` varchar(64) NOT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  `note` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `job_class`
-- ----------------------------
BEGIN;
INSERT INTO `job_class` VALUES ('1', 'Tomcat Action', 'Tomcat 操作', 'admin', '2017-11-22 15:01:00', '2017-11-22 15:01:00', 'Tomcat Action，like restart,start,stop and so on'), ('2', 'Nginx Action', 'Nginx操作', 'admin', '2017-11-22 15:02:00', '2017-11-22 15:02:00', 'Nginx Action');
COMMIT;

-- ----------------------------
--  Table structure for `job_status`
-- ----------------------------
DROP TABLE IF EXISTS `job_status`;
CREATE TABLE `job_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobstatus` varchar(32) NOT NULL,
  `jobstatus_cn` varchar(32) NOT NULL,
  `create_user` varchar(64) NOT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  `note` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `job_status`
-- ----------------------------
BEGIN;
INSERT INTO `job_status` VALUES ('1', 'on', '启用', 'admin', '2017-11-22 15:03:00', '2017-11-22 15:03:00', 'on'), ('2', 'off', '暂停', 'admin', '2017-11-22 15:03:00', '2017-11-22 15:03:00', 'off');
COMMIT;

-- ----------------------------
--  Table structure for `job_subtask`
-- ----------------------------
DROP TABLE IF EXISTS `job_subtask`;
CREATE TABLE `job_subtask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_loc` smallint(6) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `main_script_name` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  `executor` varchar(16) NOT NULL,
  `exe_user` varchar(16) NOT NULL,
  `iphost` longtext NOT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` datetime DEFAULT NULL,
  `task_status` smallint(6) DEFAULT NULL,
  `retcode` smallint(6) DEFAULT NULL,
  `stdout` longtext,
  `stderr` longtext,
  `note` longtext NOT NULL,
  `jobtask_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `job_subtask_jobtask_id_95248e35_fk_job_task_id` (`jobtask_id`),
  CONSTRAINT `job_subtask_jobtask_id_95248e35_fk_job_task_id` FOREIGN KEY (`jobtask_id`) REFERENCES `job_task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `job_subtask`
-- ----------------------------
BEGIN;
INSERT INTO `job_subtask` VALUES ('1', '1', 'upload/2017/11/22/54.pic.jpg', 'bcde.py', 'bcde', 'python', 'wls81', '127.0.0.2', '2017-11-24 15:06:22', null, '2', null, null, null, '', '1'), ('2', '2', '/wls/delpoyop/bin/serverctl', 'wrap.py', 'haode', 'python', 'wls81', '127.0.0.1', '2017-11-24 15:06:22', null, '2', null, null, null, '', '2'), ('3', '1', 'upload/2017/11/22/54.pic.jpg', 'bcde.py', 'bcde', 'python', 'wls81', '127.0.0.2', '2017-11-24 15:06:29', null, '2', null, null, null, '', '3'), ('4', '2', '/wls/delpoyop/bin/serverctl', 'wrap.py', 'haode', 'python', 'wls81', '127.0.0.1', '2017-11-24 15:06:29', null, '2', null, null, null, '', '4'), ('5', '1', 'upload/2017/11/22/2015-1-19例会.txt', 'abc.sh', 'echo', 'bash', 'wls81', '127.0.0.1', '2017-11-29 14:30:33', null, '2', null, null, null, '', '5'), ('6', '1', 'upload/2017/11/22/2015-1-19例会.txt', 'abc.sh', 'echo', 'bash', 'wls81', '127.0.0.2', '2017-11-29 14:30:33', null, '2', null, null, null, '', '5'), ('7', '2', '/wls/delpoyop/bin/serverctl', 'wrap.py', 'haode', 'python', 'wls81', '127.0.0.1', '2017-11-29 14:30:33', null, '2', null, null, null, '', '6');
COMMIT;

-- ----------------------------
--  Table structure for `job_task`
-- ----------------------------
DROP TABLE IF EXISTS `job_task`;
CREATE TABLE `job_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_loc` smallint(6) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `main_script_name` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  `iphosts` longtext NOT NULL,
  `exe_user` varchar(64) NOT NULL,
  `timeout` int(11) NOT NULL,
  `fromip` varchar(16) NOT NULL,
  `create_user` varchar(64) NOT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` datetime DEFAULT NULL,
  `job_task_status` smallint(6) DEFAULT NULL,
  `note` longtext NOT NULL,
  `comm_task_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `job_task_comm_task_id_15672f69_fk_comm_task_def_id` (`comm_task_id`),
  KEY `job_task_job_id_eb750870_fk_job_id` (`job_id`),
  CONSTRAINT `job_task_job_id_eb750870_fk_job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  CONSTRAINT `job_task_comm_task_id_15672f69_fk_comm_task_def_id` FOREIGN KEY (`comm_task_id`) REFERENCES `comm_task_def` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `job_task`
-- ----------------------------
BEGIN;
INSERT INTO `job_task` VALUES ('1', '1', 'upload/2017/11/22/54.pic.jpg', 'bcde.py', 'bcde', '127.0.0.2', 'wls81', '7', '', 'admin', '2017-11-24 15:06:22', null, '2', '', '3', '1'), ('2', '2', '/wls/delpoyop/bin/serverctl', 'wrap.py', 'haode', '127.0.0.1', 'wls81', '20', '', 'admin', '2017-11-24 15:06:22', null, '2', '', '1', '1'), ('3', '1', 'upload/2017/11/22/54.pic.jpg', 'bcde.py', 'bcde', '127.0.0.2', 'wls81', '7', '', 'admin', '2017-11-24 15:06:29', null, '2', '', '3', '2'), ('4', '2', '/wls/delpoyop/bin/serverctl', 'wrap.py', 'haode', '127.0.0.1', 'wls81', '20', '', 'admin', '2017-11-24 15:06:29', null, '2', '', '1', '2'), ('5', '1', 'upload/2017/11/22/2015-1-19例会.txt', 'abc.sh', 'echo', '127.0.0.1;127.0.0.2', 'wls81', '4', '', 'admin', '2017-11-29 14:30:33', null, '2', '', '2', '3'), ('6', '2', '/wls/delpoyop/bin/serverctl', 'wrap.py', 'haode', '127.0.0.1', 'wls81', '20', '', 'admin', '2017-11-29 14:30:33', null, '2', '', '1', '3');
COMMIT;

-- ----------------------------
--  Table structure for `job_type`
-- ----------------------------
DROP TABLE IF EXISTS `job_type`;
CREATE TABLE `job_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobtype` varchar(32) NOT NULL,
  `jobtype_cn` varchar(32) NOT NULL,
  `create_user` varchar(64) NOT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  `note` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `res_control_conf`
-- ----------------------------
DROP TABLE IF EXISTS `res_control_conf`;
CREATE TABLE `res_control_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem` int(11) NOT NULL,
  `mem_percent` int(11) NOT NULL,
  `sys_load_1` double NOT NULL,
  `sys_load_5` double NOT NULL,
  `sys_load_15` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `res_control_conf`
-- ----------------------------
BEGIN;
INSERT INTO `res_control_conf` VALUES ('1', '100', '20', '0.5', '0.5', '0.5');
COMMIT;

-- ----------------------------
--  Table structure for `saltminion`
-- ----------------------------
DROP TABLE IF EXISTS `saltminion`;
CREATE TABLE `saltminion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) NOT NULL,
  `saltkey` varchar(64) NOT NULL,
  `create_user` varchar(64) NOT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  `note` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `saltminion`
-- ----------------------------
BEGIN;
INSERT INTO `saltminion` VALUES ('1', '127.0.0.1', 'host-127.0.0.1', 'qiueer', '2017-11-22 14:57:00', '2017-11-22 14:57:00', '.1'), ('2', '127.0.0.2', 'host-127.0.0.2', 'admin', '2017-11-22 14:57:00', '2017-11-22 14:57:00', '.2');
COMMIT;

-- ----------------------------
--  Table structure for `subtask`
-- ----------------------------
DROP TABLE IF EXISTS `subtask`;
CREATE TABLE `subtask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_loc` smallint(6) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `main_script_name` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  `executor` varchar(16) NOT NULL,
  `exe_user` varchar(16) NOT NULL,
  `iphost` longtext NOT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` datetime DEFAULT NULL,
  `task_status` smallint(6) DEFAULT NULL,
  `retcode` smallint(6) DEFAULT NULL,
  `stdout` longtext,
  `stderr` longtext,
  `note` longtext NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subtask_task_id_397fa5c0_fk_task_id` (`task_id`),
  CONSTRAINT `subtask_task_id_397fa5c0_fk_task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `subtask`
-- ----------------------------
BEGIN;
INSERT INTO `subtask` VALUES ('1', '1', 'upload/2017/11/22/54.pic.jpg', '', 'HYAHA', 'python', 'deployop', '127.0.0.1', '2017-11-24 15:07:26', null, '2', null, null, null, '', '1');
COMMIT;

-- ----------------------------
--  Table structure for `task`
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` varchar(64) DEFAULT NULL,
  `exe_user` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  `iphosts` longtext NOT NULL,
  `timeout` int(11) NOT NULL,
  `fromip` varchar(16) DEFAULT NULL,
  `task_status` smallint(6) DEFAULT NULL,
  `create_user` varchar(64) DEFAULT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` datetime DEFAULT NULL,
  `note` longtext NOT NULL,
  `taskdef_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `task_taskdef_id_0d617175_fk_task_def_id` (`taskdef_id`),
  CONSTRAINT `task_taskdef_id_0d617175_fk_task_def_id` FOREIGN KEY (`taskdef_id`) REFERENCES `task_def` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `task`
-- ----------------------------
BEGIN;
INSERT INTO `task` VALUES ('1', '20171124230726489', 'deployop', 'HYAHA', '127.0.0.1', '8', '127.0.0.1', '2', 'admin', '2017-11-24 15:07:26', null, '', '2');
COMMIT;

-- ----------------------------
--  Table structure for `task_def`
-- ----------------------------
DROP TABLE IF EXISTS `task_def`;
CREATE TABLE `task_def` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_loc` smallint(6) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `remote_file` varchar(255) DEFAULT NULL,
  `file_type` smallint(6) NOT NULL,
  `main_script_name` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  `executor` varchar(16) NOT NULL,
  `func` longtext NOT NULL,
  `task_status` smallint(6) NOT NULL,
  `task_type` smallint(6) NOT NULL,
  `task_perm_status` smallint(6) NOT NULL,
  `create_user` varchar(64) NOT NULL,
  `create_dt` datetime DEFAULT NULL,
  `update_dt` datetime DEFAULT NULL,
  `note` longtext NOT NULL,
  `res_ctl_conf_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_def_res_ctl_conf_id_6b38e62d_fk_res_control_conf_id` (`res_ctl_conf_id`),
  CONSTRAINT `task_def_res_ctl_conf_id_6b38e62d_fk_res_control_conf_id` FOREIGN KEY (`res_ctl_conf_id`) REFERENCES `res_control_conf` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `task_def`
-- ----------------------------
BEGIN;
INSERT INTO `task_def` VALUES ('1', '1', 'upload/2017/11/22/2015-1-19例会.txt', null, '1', 'abc.sh', 'pp', 'bash', 'echo abc', '2', '2', '1', 'admin', '2017-11-22 22:53:28', '2017-11-22 22:53:28', 'hh', '1'), ('2', '1', 'upload/2017/11/22/54.pic.jpg', null, '1', 'bcde.py', 'python', 'python', 'print bcde', '2', '2', '1', 'admin', '2017-11-22 22:54:14', '2017-11-22 22:54:14', 'gg', '1'), ('3', '2', '', '/wls/delpoyop/bin/serverctl', '1', 'wrap.py', 'all', 'python', 'wrap', '2', '2', '1', 'admin', '2017-11-22 22:55:04', '2017-11-22 22:55:04', 'ww', '1');
COMMIT;

-- ----------------------------
--  Table structure for `testModel_test`
-- ----------------------------
DROP TABLE IF EXISTS `testModel_test`;
CREATE TABLE `testModel_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
