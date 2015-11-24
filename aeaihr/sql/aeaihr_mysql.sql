/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : aeaihr

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2015-04-23 08:34:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hr_attendance
-- ----------------------------
DROP TABLE IF EXISTS `hr_attendance`;
CREATE TABLE `hr_attendance` (
  `ATD_ID` char(36) NOT NULL,
  `ATD_DATE` varchar(10) DEFAULT NULL,
  `USER_ID` char(36) DEFAULT NULL,
  `ATD_IN_TIME` datetime DEFAULT NULL,
  `ATD_IN_PLACE` varchar(32) DEFAULT NULL,
  `ATD_OUT_TIME` datetime DEFAULT NULL,
  `ATD_OUT_PLACE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ATD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_attendance
-- ----------------------------

-- ----------------------------
-- Table structure for hr_education
-- ----------------------------
DROP TABLE IF EXISTS `hr_education`;
CREATE TABLE `hr_education` (
  `EDU_ID` char(36) NOT NULL,
  `EMP_ID` char(36) DEFAULT NULL,
  `EDU_IN_TIME` date DEFAULT NULL,
  `EDU_OUT_TIME` date DEFAULT NULL,
  `EDU_EDUCATION` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`EDU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_education
-- ----------------------------

-- ----------------------------
-- Table structure for hr_employee
-- ----------------------------
DROP TABLE IF EXISTS `hr_employee`;
CREATE TABLE `hr_employee` (
  `EMP_ID` char(36) NOT NULL,
  `EMP_CODE` varchar(32) DEFAULT NULL,
  `EMP_NAME` varchar(32) DEFAULT NULL,
  `EMP_SEX` char(1) DEFAULT NULL,
  `EMP_BIRTHDAY` date DEFAULT NULL,
  `EMP_NATIONAL` varchar(32) DEFAULT NULL,
  `EMP_PARTY` char(2) DEFAULT NULL,
  `EMP_ID_NUMBER` varchar(32) DEFAULT NULL,
  `EMP_TEL` varchar(32) DEFAULT NULL,
  `EMP_NATIVE_PLACE` varchar(32) DEFAULT NULL,
  `EMP_MARITAL_STATUS` varchar(32) DEFAULT NULL,
  `EMP_REFERENCE_TIME` date DEFAULT NULL,
  `EMP_NOW_DEPT` varchar(32) DEFAULT NULL,
  `EMP_NOW_JOB` varchar(32) DEFAULT NULL,
  `EMP_INDUCTION_TIME` date DEFAULT NULL,
  `EMP_EMAIL` varchar(32) DEFAULT NULL,
  `EMP_REGULAR_TIME` date DEFAULT NULL,
  `EMP_EDUCATION` varchar(32) DEFAULT NULL,
  `EMP_STATE` varchar(32) DEFAULT NULL,
  `EMP_BASIC` decimal(8,2) DEFAULT NULL,
  `EMP_PERFORMANCE` decimal(8,2) DEFAULT NULL,
  `EMP_SUBSIDY` decimal(8,2) DEFAULT NULL,
  `EMP_WORK_STATE` varchar(32) DEFAULT NULL,
  `EMP_DIMISSION_TIME` date DEFAULT NULL,
  `EMP_TAX` decimal(8,0) DEFAULT NULL,
  `EMP_INSURE` decimal(8,0) DEFAULT NULL,
  `EMP_ANNUAL_LEAVE_DAYS` varchar(5) DEFAULT NULL,
  `EMP_ALLOWANCE` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_employee
-- ----------------------------
INSERT INTO `hr_employee` VALUES ('434964EB-04E5-4BE6-822C-2FBB5A6BF50D', 'CS02', '赵小二', 'M', null, '', '', '', '', '', '', null, '人力部', '行政总监', null, '', null, '', 'drafe', '0.00', '0.00', '0.00', '', null, '0', '0', null, null);
INSERT INTO `hr_employee` VALUES ('5F12ED6E-372E-4DC5-AADA-9B3A5EFB53C6', 'CS01', '张老大', 'M', null, '', '', '', '', '', '', null, '研发部', '技术总监', null, '', null, '', 'drafe', '3500.00', '500.00', '100.00', '', null, '200', '200', null, null);
INSERT INTO `hr_employee` VALUES ('D49E1F66-68AD-4BEA-B7ED-698264D16989', 'CS03', '孙小三', 'M', null, '', '', '', '', '', '', null, '技术部', '技术顾问', null, '', null, '', 'drafe', '0.00', '0.00', '0.00', '', null, '0', '0', null, null);
INSERT INTO `hr_employee` VALUES ('D773AB95-FAEF-4748-909A-1351FAD635F4', 'CS04', '赵小四', 'M', null, '', '', '', '', '', '', null, '技术部', '技术顾问', null, '', null, '', 'drafe', '0.00', '0.00', '0.00', '', null, '0', '0', null, null);

-- ----------------------------
-- Table structure for hr_evection
-- ----------------------------
DROP TABLE IF EXISTS `hr_evection`;
CREATE TABLE `hr_evection` (
  `EVE_ID` char(36) NOT NULL,
  `EVE_APPLY_USER` char(36) DEFAULT NULL,
  `EVE_TOGETHER` varchar(32) DEFAULT NULL,
  `EVE_START_TIME` datetime DEFAULT NULL,
  `EVE_OVER_TIME` date DEFAULT NULL,
  `EVE_REIMBURSEMENT_TIME` datetime DEFAULT NULL,
  `EVE_DAYS` int(11) DEFAULT NULL,
  `EVE_SUBSIDY` decimal(6,2) DEFAULT NULL,
  `EVE_APPROVE_USER` char(36) DEFAULT NULL,
  `EVE_APPROVE_TIME` date DEFAULT NULL,
  `APP_RESULT` varchar(32) DEFAULT NULL,
  `EVE_APPROVE_OPINION` varchar(256) DEFAULT NULL,
  `EVE_TOTAL_MONEY` decimal(6,2) DEFAULT NULL,
  `EVE_REASON` varchar(256) DEFAULT NULL,
  `STATE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`EVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_evection
-- ----------------------------

-- ----------------------------
-- Table structure for hr_expenses
-- ----------------------------
DROP TABLE IF EXISTS `hr_expenses`;
CREATE TABLE `hr_expenses` (
  `EXPE_ID` char(36) NOT NULL,
  `EVE_ID` char(36) DEFAULT NULL,
  `EXPE_DEPART` varchar(32) DEFAULT NULL,
  `EXPE_DESTINATION` varchar(32) DEFAULT NULL,
  `EXPE_DEPART_TIME` datetime DEFAULT NULL,
  `EXPE_COMEBACK_TIME` date DEFAULT NULL,
  `EXPE_TRANSPORTATION_WAY` varchar(32) DEFAULT NULL,
  `EXPE_TRANSPORTATION_FEE` decimal(6,2) DEFAULT NULL,
  `EXPE_HOTEL` decimal(6,2) DEFAULT NULL,
  `EXPE_OTHER` decimal(6,2) DEFAULT NULL,
  `EXPE_REMARKS` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`EXPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_expenses
-- ----------------------------

-- ----------------------------
-- Table structure for hr_experience
-- ----------------------------
DROP TABLE IF EXISTS `hr_experience`;
CREATE TABLE `hr_experience` (
  `EXP_ID` char(36) NOT NULL,
  `EMP_ID` char(36) DEFAULT NULL,
  `EXP_IN_TIME` date DEFAULT NULL,
  `EXP_OUT_TIME` date DEFAULT NULL,
  `EXP_EXPERIENCE` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`EXP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_experience
-- ----------------------------

-- ----------------------------
-- Table structure for hr_leave
-- ----------------------------
DROP TABLE IF EXISTS `hr_leave`;
CREATE TABLE `hr_leave` (
  `LEA_ID` char(36) NOT NULL,
  `USER_ID` char(36) DEFAULT NULL,
  `LEA_DATE` varchar(32) DEFAULT NULL,
  `LEA_SDATE` datetime DEFAULT NULL,
  `LEA_EDATE` datetime DEFAULT NULL,
  `LEA_DAYS` varchar(32) DEFAULT NULL,
  `LEA_TYPE` varchar(12) DEFAULT NULL,
  `LEA_CAUSE` varchar(256) DEFAULT NULL,
  `STATE` varchar(32) DEFAULT NULL,
  `LEA_APPOVER` char(36) DEFAULT NULL,
  `LEA_APP_TIME` datetime DEFAULT NULL,
  `LEA_APP_OPINION` varchar(256) DEFAULT NULL,
  `APP_RESULT` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`LEA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_leave
-- ----------------------------

-- ----------------------------
-- Table structure for hr_salary
-- ----------------------------
DROP TABLE IF EXISTS `hr_salary`;
CREATE TABLE `hr_salary` (
  `SAL_ID` char(36) NOT NULL,
  `SAL_USER` char(36) DEFAULT NULL,
  `SAL_YEAR` varchar(32) DEFAULT NULL,
  `SAL_MONTH` varchar(32) DEFAULT NULL,
  `SAL_VALID_DAYS` decimal(3,1) DEFAULT NULL,
  `SAL_WORK_DAYS` decimal(3,1) DEFAULT NULL,
  `SAL_OVERTIME` decimal(3,1) DEFAULT NULL,
  `SAL_LEAVE` decimal(3,1) DEFAULT NULL,
  `SAL_BASIC` decimal(8,2) DEFAULT NULL,
  `SAL_PERFORMANCE` decimal(8,2) DEFAULT NULL,
  `SAL_SUBSIDY` decimal(8,2) DEFAULT NULL,
  `SAL_BONUS` decimal(8,2) DEFAULT NULL,
  `SAL_TOTAL` decimal(8,2) DEFAULT NULL,
  `SAL_STATE` varchar(32) DEFAULT NULL,
  `SAL_INSURE` decimal(8,2) DEFAULT NULL,
  `SAL_TAX` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`SAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_salary
-- ----------------------------

-- ----------------------------
-- Table structure for hr_valid
-- ----------------------------
DROP TABLE IF EXISTS `hr_valid`;
CREATE TABLE `hr_valid` (
  `VALID_YEAR` varchar(32) NOT NULL,
  `VALID_MONTH` varchar(32) NOT NULL,
  `VALID_DAYS` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`VALID_YEAR`,`VALID_MONTH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_valid
-- ----------------------------
INSERT INTO `hr_valid` VALUES ('2015', '03', '24.0');

-- ----------------------------
-- Table structure for hr_work_overtime
-- ----------------------------
DROP TABLE IF EXISTS `hr_work_overtime`;
CREATE TABLE `hr_work_overtime` (
  `WOT_ID` char(36) NOT NULL,
  `USER_ID` char(36) DEFAULT NULL,
  `WOT_DATE` varchar(32) DEFAULT NULL,
  `WOT_PARTICIPANT` varchar(32) DEFAULT NULL,
  `WOT_PLACE` varchar(32) DEFAULT NULL,
  `WOT_DESC` varchar(256) DEFAULT NULL,
  `WOT_OVERTIME_DATE` date DEFAULT NULL,
  `WOT_TIME` varchar(32) DEFAULT NULL,
  `WOT_APPROVER` char(36) DEFAULT NULL,
  `WOT_APP_TIME` datetime DEFAULT NULL,
  `APP_RESULT` varchar(32) DEFAULT NULL,
  `WOT_APP_OPINION` varchar(256) DEFAULT NULL,
  `STATE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`WOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_work_overtime
-- ----------------------------

-- ----------------------------
-- Table structure for hr_work_performance
-- ----------------------------
DROP TABLE IF EXISTS `hr_work_performance`;
CREATE TABLE `hr_work_performance` (
  `PER_ID` char(36) NOT NULL,
  `EMP_ID` char(36) DEFAULT NULL,
  `PER_IN_TIME` date DEFAULT NULL,
  `PER_NOW_TIME` date DEFAULT NULL,
  `PER_WORK_PERFORMANCE` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`PER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_work_performance
-- ----------------------------

-- ----------------------------
-- Table structure for security_group
-- ----------------------------
DROP TABLE IF EXISTS `security_group`;
CREATE TABLE `security_group` (
  `GRP_ID` varchar(36) NOT NULL,
  `GRP_CODE` varchar(32) DEFAULT NULL,
  `GRP_NAME` varchar(32) DEFAULT NULL,
  `GRP_PID` varchar(36) DEFAULT NULL,
  `GRP_DESC` varchar(128) DEFAULT NULL,
  `GRP_STATE` varchar(1) DEFAULT NULL,
  `GRP_SORT` int(11) DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_group
-- ----------------------------
INSERT INTO `security_group` VALUES ('00000000-0000-0000-00000000000000000', 'Root', '公司集团', null, null, '1', '0');
INSERT INTO `security_group` VALUES ('0E12268C-BD14-4FCE-A7C0-A8A5D55ED842', 'ADM', '行政部', '00000000-0000-0000-00000000000000000', '', '1', '7');
INSERT INTO `security_group` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', 'DEV', '研发部', '00000000-0000-0000-00000000000000000', '', '1', '5');
INSERT INTO `security_group` VALUES ('42FE2AE3-DBA0-498B-86BC-05E35D123A3E', 'SALE', '营销部', '00000000-0000-0000-00000000000000000', '', '1', '6');
INSERT INTO `security_group` VALUES ('72A9E7B1-5B47-4822-ACA0-A8CB1EE78506', 'TECH', '技术部', '00000000-0000-0000-00000000000000000', '', '1', '4');
INSERT INTO `security_group` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', 'HR', '人力部', '00000000-0000-0000-00000000000000000', '', '1', '3');

-- ----------------------------
-- Table structure for security_group_auth
-- ----------------------------
DROP TABLE IF EXISTS `security_group_auth`;
CREATE TABLE `security_group_auth` (
  `GRP_AUTH_ID` varchar(36) NOT NULL,
  `GRP_ID` varchar(36) DEFAULT NULL,
  `RES_TYPE` varchar(32) DEFAULT NULL,
  `RES_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GRP_AUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_group_auth
-- ----------------------------
INSERT INTO `security_group_auth` VALUES ('25DA0120-EC1F-4C80-BCFF-C1DD27FD0EAA', 'FDB148EF-9146-4675-AB8E-0CE85164B67A', 'Menu', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332');
INSERT INTO `security_group_auth` VALUES ('93EF8C63-845C-4CE0-9AF7-EA00FDEAEBFD', 'FDB148EF-9146-4675-AB8E-0CE85164B67A', 'Menu', '00000000-0000-0000-00000000000000000');

-- ----------------------------
-- Table structure for security_role
-- ----------------------------
DROP TABLE IF EXISTS `security_role`;
CREATE TABLE `security_role` (
  `ROLE_ID` varchar(36) NOT NULL,
  `ROLE_CODE` varchar(32) DEFAULT NULL,
  `ROLE_NAME` varchar(32) DEFAULT NULL,
  `ROLE_PID` varchar(36) DEFAULT NULL,
  `ROLE_DESC` varchar(128) DEFAULT NULL,
  `ROLE_STATE` varchar(32) DEFAULT NULL,
  `ROLE_SORT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role
-- ----------------------------
INSERT INTO `security_role` VALUES ('00000000-0000-0000-00000000000000000', 'System', '系统角色', null, null, '1', null);
INSERT INTO `security_role` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'EMPLOYEE', '普通职员', '00000000-0000-0000-00000000000000000', '', '1', '4');
INSERT INTO `security_role` VALUES ('7506D7DA-8E26-49AE-AF5E-40E8912172A4', 'HR_MASTER', '人力负责人', '00000000-0000-0000-00000000000000000', '', '1', '5');
INSERT INTO `security_role` VALUES ('895A1379-0B71-4390-955D-92A49ABABDC0', 'SALARY_MASTER', '薪资负责人', '00000000-0000-0000-00000000000000000', '', '1', '7');
INSERT INTO `security_role` VALUES ('D7CEA7EC-8CC9-42A3-8125-1FAE15661A48', 'APPROVE', '业务核准人', '00000000-0000-0000-00000000000000000', '', '1', '6');

-- ----------------------------
-- Table structure for security_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `security_role_auth`;
CREATE TABLE `security_role_auth` (
  `ROLE_AUTH_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) DEFAULT NULL,
  `RES_TYPE` varchar(32) DEFAULT NULL,
  `RES_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_AUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role_auth
-- ----------------------------
INSERT INTO `security_role_auth` VALUES ('1927F4A0-FD3C-4948-B515-2E34025EE648', '61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'Menu', '00000000-0000-0000-00000000000000001');
INSERT INTO `security_role_auth` VALUES ('6E84F621-4F77-4191-85C5-22EA79DE8206', '61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'Menu', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332');
INSERT INTO `security_role_auth` VALUES ('A0BD93A6-20F0-40D2-9B8B-9E6BAE6BDE9B', '7506D7DA-8E26-49AE-AF5E-40E8912172A4', 'Menu', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_auth` VALUES ('BAA2B732-85F0-4B8A-9BD1-49E12B7B1E8D', '61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'Menu', 'D3582A2A-3173-4F92-B1AD-2F999A2CBE18');
INSERT INTO `security_role_auth` VALUES ('CA0894E0-2B7B-4423-8068-414914B342C7', '7506D7DA-8E26-49AE-AF5E-40E8912172A4', 'Menu', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332');
INSERT INTO `security_role_auth` VALUES ('D3A70B1F-574C-49CF-8185-8CCEA1B74DBE', '61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'Menu', '00000000-0000-0000-00000000000000000');

-- ----------------------------
-- Table structure for security_role_group_rel
-- ----------------------------
DROP TABLE IF EXISTS `security_role_group_rel`;
CREATE TABLE `security_role_group_rel` (
  `GRP_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`GRP_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role_group_rel
-- ----------------------------
INSERT INTO `security_role_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_group_rel` VALUES ('21E50836-912E-4DB8-82CB-9B32C8A44C9F', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_group_rel` VALUES ('21E50836-912E-4DB8-82CB-9B32C8A44C9F', '25788B54-CE0A-4137-8890-EFA4F0DE06B6');
INSERT INTO `security_role_group_rel` VALUES ('23F5915B-C8F1-4BA5-AED9-7CE50B11D5F4', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_group_rel` VALUES ('23F5915B-C8F1-4BA5-AED9-7CE50B11D5F4', '25788B54-CE0A-4137-8890-EFA4F0DE06B6');
INSERT INTO `security_role_group_rel` VALUES ('315F898C-A008-4F77-BAB0-4FDF935F7B1F', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_group_rel` VALUES ('315F898C-A008-4F77-BAB0-4FDF935F7B1F', '25788B54-CE0A-4137-8890-EFA4F0DE06B6');
INSERT INTO `security_role_group_rel` VALUES ('BBD420A2-68AE-49C2-B3D8-78DC166F511F', '00000000-0000-0000-00000000000000000');

-- ----------------------------
-- Table structure for security_user
-- ----------------------------
DROP TABLE IF EXISTS `security_user`;
CREATE TABLE `security_user` (
  `USER_ID` varchar(36) NOT NULL,
  `USER_CODE` varchar(32) DEFAULT NULL,
  `USER_NAME` varchar(32) DEFAULT NULL,
  `USER_PWD` varchar(32) DEFAULT NULL,
  `USER_SEX` varchar(1) DEFAULT NULL,
  `USER_DESC` varchar(128) DEFAULT NULL,
  `USER_STATE` varchar(32) DEFAULT NULL,
  `USER_SORT` int(11) DEFAULT NULL,
  `USER_MAIL` varchar(64) DEFAULT NULL,
  `USER_PHONE` varchar(64) DEFAULT NULL,
  `USER_WX_OPENID` varchar(64) DEFAULT NULL,  
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user
-- ----------------------------
INSERT INTO `security_user` VALUES ('57ECFB2D-1F40-4136-AD2F-87D37A9AEFB5', 'CS01', '张老大', 'DAE6CDC2B49F7C32164BE2AF1A7916AA', 'M', '普通用户', '1', '3', '', '',null);
INSERT INTO `security_user` VALUES ('9C548347-0732-4D83-B860-11531C2B58E5', 'CS04', '赵小四', 'FBAF749E6A085DCBBE41FF5C030EBF98', 'M', '普通用户', '1', '0', '', '',null);
INSERT INTO `security_user` VALUES ('B9E0DDB0-F0A3-4CF8-94A4-C806FFA868D0', 'CS03', '孙小三', '25EC07853BDC7B87DD021F5580C70855', 'M', '普通用户', '1', '0', '', '',null);
INSERT INTO `security_user` VALUES ('D67622CD-EBA3-48B0-BBF4-46D3BFD567F2', 'admin', '管理员', '21232F297A57A5A743894A0E4A801FC3', 'M', '内置账户，勿删！！', '1', '1', null, null,null);
INSERT INTO `security_user` VALUES ('E011D0E7-C777-4CC8-BEBD-EBC8E63E797D', 'CS02', '赵小二', '39661AF3C6AFE19E95700A0E7373446A', 'M', '普通用户', '1', '0', '', '',null);

-- ----------------------------
-- Table structure for security_user_auth
-- ----------------------------
DROP TABLE IF EXISTS `security_user_auth`;
CREATE TABLE `security_user_auth` (
  `USER_AUTH_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `RES_TYPE` varchar(32) DEFAULT NULL,
  `RES_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`USER_AUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_auth
-- ----------------------------

-- ----------------------------
-- Table structure for security_user_group_rel
-- ----------------------------
DROP TABLE IF EXISTS `security_user_group_rel`;
CREATE TABLE `security_user_group_rel` (
  `GRP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`GRP_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_group_rel
-- ----------------------------
INSERT INTO `security_user_group_rel` VALUES ('', '4C287143-3D36-4F75-9389-C9DC5B57C8AF');
INSERT INTO `security_user_group_rel` VALUES ('', '8EB5AE29-0FC2-4454-8F4B-FAF5E338F6FE');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', 'D67622CD-EBA3-48B0-BBF4-46D3BFD567F2');
INSERT INTO `security_user_group_rel` VALUES ('0E12268C-BD14-4FCE-A7C0-A8A5D55ED842', '221DE355-458C-4496-92BE-56028EB2FDB1');
INSERT INTO `security_user_group_rel` VALUES ('0E12268C-BD14-4FCE-A7C0-A8A5D55ED842', 'E011D0E7-C777-4CC8-BEBD-EBC8E63E797D');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', '36CE7A69-7019-4C1E-B3EC-CA576FF0C2F9');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', '4EA50C76-BDD9-4D01-9F9A-D712C01F2C42');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', '57ECFB2D-1F40-4136-AD2F-87D37A9AEFB5');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', '9C548347-0732-4D83-B860-11531C2B58E5');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', 'ADE5BCC4-35CD-4C32-A9F5-A4506BCF62CE');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', 'B9E0DDB0-F0A3-4CF8-94A4-C806FFA868D0');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', 'E339FF4B-13CD-4DE1-A97B-9C3BC2213455');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', 'EF9EAB93-89A4-45C5-A4A7-B79B2370D524');
INSERT INTO `security_user_group_rel` VALUES ('3435DD86-53B8-41DC-BE10-0463428D18D6', 'EFC1AA2D-B7EB-4469-B3D6-161747B3B328');
INSERT INTO `security_user_group_rel` VALUES ('42FE2AE3-DBA0-498B-86BC-05E35D123A3E', '221DE355-458C-4496-92BE-56028EB2FDB1');
INSERT INTO `security_user_group_rel` VALUES ('42FE2AE3-DBA0-498B-86BC-05E35D123A3E', 'E011D0E7-C777-4CC8-BEBD-EBC8E63E797D');
INSERT INTO `security_user_group_rel` VALUES ('42FE2AE3-DBA0-498B-86BC-05E35D123A3E', 'FE64463E-A60E-485B-BCF8-D3EB64079C5F');
INSERT INTO `security_user_group_rel` VALUES ('72A9E7B1-5B47-4822-ACA0-A8CB1EE78506', '4EA50C76-BDD9-4D01-9F9A-D712C01F2C42');
INSERT INTO `security_user_group_rel` VALUES ('72A9E7B1-5B47-4822-ACA0-A8CB1EE78506', '9C548347-0732-4D83-B860-11531C2B58E5');
INSERT INTO `security_user_group_rel` VALUES ('72A9E7B1-5B47-4822-ACA0-A8CB1EE78506', 'ADE5BCC4-35CD-4C32-A9F5-A4506BCF62CE');
INSERT INTO `security_user_group_rel` VALUES ('72A9E7B1-5B47-4822-ACA0-A8CB1EE78506', 'B9E0DDB0-F0A3-4CF8-94A4-C806FFA868D0');
INSERT INTO `security_user_group_rel` VALUES ('72A9E7B1-5B47-4822-ACA0-A8CB1EE78506', 'E339FF4B-13CD-4DE1-A97B-9C3BC2213455');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'A585806E-85A1-4FF4-BDA8-777DD20A6CFF');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'AAEEC866-268A-4D3A-BC5A-781CF7CC5EE5');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'B5F8B936-2A8C-4712-8E9F-2F6711AC1BF6');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'CB68BF5F-E502-470A-8E1F-82609EF48A3C');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'F4152C37-13E4-46AD-AE94-B32A305136D8');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'FFE66429-49CD-41EB-940D-E55DBBA64E86');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', '1B14C519-74DB-44C1-AE89-E172B827B6E6');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', '21F3BA0E-1D7C-4289-989B-CAA6104F27A4');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', '221DE355-458C-4496-92BE-56028EB2FDB1');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', '32188D94-20C3-44C3-BA02-5299E61E2BBE');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', '4BDC45AA-CABE-4803-B181-475D8769A529');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', '57ECFB2D-1F40-4136-AD2F-87D37A9AEFB5');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', '9CBD7319-4796-4B72-8CC2-D4683483E743');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', '9D33DFBB-3037-46B5-AD24-A6991EDE900A');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', 'AE507C59-2FD4-4E17-A114-43B9FB58928C');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', 'D50E577C-DA81-49E1-A409-CD71D9FFCCBE');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', 'E011D0E7-C777-4CC8-BEBD-EBC8E63E797D');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', 'EDDC1E97-BA7F-4F68-80FA-785233287074');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', 'EF9EAB93-89A4-45C5-A4A7-B79B2370D524');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', 'FB9A9256-0E88-4DA1-8649-1767644E1BED');
INSERT INTO `security_user_group_rel` VALUES ('FDB148EF-9146-4675-AB8E-0CE85164B67A', 'FE64463E-A60E-485B-BCF8-D3EB64079C5F');
INSERT INTO `security_user_group_rel` VALUES ('人力资源部', '59A8E797-7FD4-4C57-96A2-1B18B6857EDC');
INSERT INTO `security_user_group_rel` VALUES ('人力资源部', '6EE129C4-9823-4011-BCBE-E0E955B71E4F');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'A21D1424-1D12-492B-BE49-11E2368292B3');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'A321A845-A642-4197-9235-1E185155B1B4');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'B9125719-76A4-4582-875B-40E8FBCDFEE8');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'CB3E4581-4C10-4C50-A97D-9171536289EF');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'CC76605A-F50A-4205-BE3E-D96C8923AE5E');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'CDF27CF4-1F8F-4DA1-A0A7-FAA4FB25D446');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'CEB96C06-C54E-4DAB-BD20-BF6EE4B789CB');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'D3A31CFE-5822-43B7-BA56-45DB8C05A082');
INSERT INTO `security_user_group_rel` VALUES ('信息部', 'E8212955-B64B-4D43-A7A3-899D2CB4E309');

-- ----------------------------
-- Table structure for security_user_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `security_user_role_rel`;
CREATE TABLE `security_user_role_rel` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_role_rel
-- ----------------------------
INSERT INTO `security_user_role_rel` VALUES ('00000000-0000-0000-00000000000000000', '01355EDD-C556-4003-AFCE-0E777D4C2776');
INSERT INTO `security_user_role_rel` VALUES ('00000000-0000-0000-00000000000000000', '3C927795-572A-4478-871E-5AC72C165BCB');
INSERT INTO `security_user_role_rel` VALUES ('00000000-0000-0000-00000000000000000', '6A4BD4CD-5A31-4510-A4D0-A227C0CECA93');
INSERT INTO `security_user_role_rel` VALUES ('00000000-0000-0000-00000000000000000', '7DE6ED51-3F4B-4BE6-84A6-17BC6186CC24');
INSERT INTO `security_user_role_rel` VALUES ('00000000-0000-0000-00000000000000000', 'F1580191-F60D-438E-9B59-3C1E491E9E78');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', '221DE355-458C-4496-92BE-56028EB2FDB1');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', '4EA50C76-BDD9-4D01-9F9A-D712C01F2C42');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', '57ECFB2D-1F40-4136-AD2F-87D37A9AEFB5');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', '9C548347-0732-4D83-B860-11531C2B58E5');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'ADE5BCC4-35CD-4C32-A9F5-A4506BCF62CE');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'B9E0DDB0-F0A3-4CF8-94A4-C806FFA868D0');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'E011D0E7-C777-4CC8-BEBD-EBC8E63E797D');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'E339FF4B-13CD-4DE1-A97B-9C3BC2213455');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'EF9EAB93-89A4-45C5-A4A7-B79B2370D524');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'EFC1AA2D-B7EB-4469-B3D6-161747B3B328');
INSERT INTO `security_user_role_rel` VALUES ('61729215-7F01-417B-A7A9-C4B4E0B9A0A3', 'FE64463E-A60E-485B-BCF8-D3EB64079C5F');
INSERT INTO `security_user_role_rel` VALUES ('7506D7DA-8E26-49AE-AF5E-40E8912172A4', '221DE355-458C-4496-92BE-56028EB2FDB1');
INSERT INTO `security_user_role_rel` VALUES ('7506D7DA-8E26-49AE-AF5E-40E8912172A4', '57ECFB2D-1F40-4136-AD2F-87D37A9AEFB5');
INSERT INTO `security_user_role_rel` VALUES ('7506D7DA-8E26-49AE-AF5E-40E8912172A4', 'E011D0E7-C777-4CC8-BEBD-EBC8E63E797D');
INSERT INTO `security_user_role_rel` VALUES ('7506D7DA-8E26-49AE-AF5E-40E8912172A4', 'EF9EAB93-89A4-45C5-A4A7-B79B2370D524');
INSERT INTO `security_user_role_rel` VALUES ('7506D7DA-8E26-49AE-AF5E-40E8912172A4', 'FE64463E-A60E-485B-BCF8-D3EB64079C5F');
INSERT INTO `security_user_role_rel` VALUES ('8752C789-44BD-4941-AEF1-B9CC8B5C3CC6', '0098122C-C06E-4316-85B7-54C2646329AF');
INSERT INTO `security_user_role_rel` VALUES ('8752C789-44BD-4941-AEF1-B9CC8B5C3CC6', '32188D94-20C3-44C3-BA02-5299E61E2BBE');
INSERT INTO `security_user_role_rel` VALUES ('8752C789-44BD-4941-AEF1-B9CC8B5C3CC6', '638EB00D-8CE9-40CD-B1D4-65BAFB48BFFE');
INSERT INTO `security_user_role_rel` VALUES ('8752C789-44BD-4941-AEF1-B9CC8B5C3CC6', '7DE6ED51-3F4B-4BE6-84A6-17BC6186CC24');
INSERT INTO `security_user_role_rel` VALUES ('895A1379-0B71-4390-955D-92A49ABABDC0', '221DE355-458C-4496-92BE-56028EB2FDB1');
INSERT INTO `security_user_role_rel` VALUES ('895A1379-0B71-4390-955D-92A49ABABDC0', '57ECFB2D-1F40-4136-AD2F-87D37A9AEFB5');
INSERT INTO `security_user_role_rel` VALUES ('895A1379-0B71-4390-955D-92A49ABABDC0', 'E011D0E7-C777-4CC8-BEBD-EBC8E63E797D');
INSERT INTO `security_user_role_rel` VALUES ('895A1379-0B71-4390-955D-92A49ABABDC0', 'EF9EAB93-89A4-45C5-A4A7-B79B2370D524');
INSERT INTO `security_user_role_rel` VALUES ('895A1379-0B71-4390-955D-92A49ABABDC0', 'FE64463E-A60E-485B-BCF8-D3EB64079C5F');
INSERT INTO `security_user_role_rel` VALUES ('D4094F0E-8087-4AAD-A957-01797000BB42', 'CDADE387-273C-45D0-8858-8AC0050DC78E');
INSERT INTO `security_user_role_rel` VALUES ('D7CEA7EC-8CC9-42A3-8125-1FAE15661A48', '221DE355-458C-4496-92BE-56028EB2FDB1');
INSERT INTO `security_user_role_rel` VALUES ('D7CEA7EC-8CC9-42A3-8125-1FAE15661A48', '7F89F556-E9AB-4BFC-8D7A-E0D5879665E5');
INSERT INTO `security_user_role_rel` VALUES ('D7CEA7EC-8CC9-42A3-8125-1FAE15661A48', 'E011D0E7-C777-4CC8-BEBD-EBC8E63E797D');

-- ----------------------------
-- Table structure for sys_codelist
-- ----------------------------
DROP TABLE IF EXISTS `sys_codelist`;
CREATE TABLE `sys_codelist` (
  `TYPE_ID` varchar(32) NOT NULL,
  `CODE_ID` varchar(32) NOT NULL,
  `CODE_NAME` varchar(32) DEFAULT NULL,
  `CODE_DESC` varchar(128) DEFAULT NULL,
  `CODE_SORT` int(11) DEFAULT NULL,
  `CODE_FLAG` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`,`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codelist
-- ----------------------------
INSERT INTO `sys_codelist` VALUES ('APP_RESULT', 'NO', '不同意', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('APP_RESULT', 'YES', '同意', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('BOOL_DEFINE', 'N', '否', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('BOOL_DEFINE', 'Y', '是', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CODE_TYPE_GROUP', 'app_code_define', '应用编码', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CODE_TYPE_GROUP', 'sys_code_define', '系统编码', '系统编码123a1', '3', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '0', '初中', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '1', '高中', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '2', '中技', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '3', '中专', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '4', '大专', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '5', '本科', '', '6', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '6', 'MBA', '', '7', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '7', '硕士', '', '8', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '8', '博士', '', '9', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_EDUCATION', '9', '其他', '', '10', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_MARITAL_STATUS', '0', '未婚', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_MARITAL_STATUS', '1', '已婚', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_MARITAL_STATUS', '2', '离异', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_PARTY', '0', '群众', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_PARTY', '1', '党员', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_STATE', 'approved', '已核准', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('EMP_STATE', 'drafe', '草稿', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('EXPE_TRANSPORTATION_WAY', '0', '汽车', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('EXPE_TRANSPORTATION_WAY', '1', '火车', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('EXPE_TRANSPORTATION_WAY', '2', '轮船', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('EXPE_TRANSPORTATION_WAY', '3', '飞机', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('FUNCTION_TYPE', 'funcmenu', '功能菜单', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('FUNCTION_TYPE', 'funcnode', '功能节点', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('HANDLER_TYPE', 'MAIN', '主控制器', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('HANDLER_TYPE', 'OTHER', '其他控制器', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('LEA_TYPE', '0', '病假', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('LEA_TYPE', '1', '事假', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('MENUTREE_CASCADE', '0', '关闭', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('MENUTREE_CASCADE', '1', '展开', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('OPER_CTR_TYPE', 'disableMode', '不能操作', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('OPER_CTR_TYPE', 'hiddenMode', '隐藏按钮', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('POSITION_TYPE', 'dummy_postion', '虚拟岗位', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('POSITION_TYPE', 'real_postion', '实际岗位', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('RES_TYPE', 'IMAGE', '图片文件', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('RES_TYPE', 'ISO', '镜像文件', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('RES_TYPE', 'VIDEO', '视频文件', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('SAL_STATE', '0', '初始化', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('SAL_STATE', '1', '已核准', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('STATE', 'approved', '已核准', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('STATE', 'drafe', '草稿', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('STATE', 'submitted', '已提交', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('SYS_VALID_TYPE', '0', '无效', 'null', '2', '1');
INSERT INTO `sys_codelist` VALUES ('SYS_VALID_TYPE', '1', '有效', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('UNIT_TYPE', 'dept', '部门', '', '10', '1');
INSERT INTO `sys_codelist` VALUES ('UNIT_TYPE', 'org', '机构', '', '20', '1');
INSERT INTO `sys_codelist` VALUES ('UNIT_TYPE', 'post', '岗位', '', '30', '1');
INSERT INTO `sys_codelist` VALUES ('USER_SEX', 'F', '女', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('USER_SEX', 'M', '男', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('WOT_TIME', '0', '0.5', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('WOT_TIME', '1', '1', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('WOT_TIME', '2', '2', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('WOT_TIME', '3', '3', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('WOT_TIME', '4', '4', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('WOT_TIME', '5', '5', '', '6', '1');

-- ----------------------------
-- Table structure for sys_codetype
-- ----------------------------
DROP TABLE IF EXISTS `sys_codetype`;
CREATE TABLE `sys_codetype` (
  `TYPE_ID` varchar(32) NOT NULL,
  `TYPE_NAME` varchar(32) DEFAULT NULL,
  `TYPE_GROUP` varchar(32) DEFAULT NULL,
  `TYPE_DESC` varchar(128) DEFAULT NULL,
  `IS_CACHED` char(1) DEFAULT NULL,
  `IS_UNITEADMIN` char(1) DEFAULT NULL,
  `IS_EDITABLE` char(1) DEFAULT NULL,
  `LEGNTT_LIMIT` varchar(6) DEFAULT NULL,
  `CHARACTER_LIMIT` char(1) DEFAULT NULL,
  `EXTEND_SQL` char(1) DEFAULT NULL,
  `SQL_BODY` varchar(512) DEFAULT NULL,
  `SQL_COND` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codetype
-- ----------------------------
INSERT INTO `sys_codetype` VALUES ('APP_RESULT', '核准結果', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', null, null, null);
INSERT INTO `sys_codetype` VALUES ('BOOL_DEFINE', '布尔定义', 'sys_code_define', '', 'Y', 'Y', 'Y', '1', 'C', '', '', '');
INSERT INTO `sys_codetype` VALUES ('CODE_TYPE_GROUP', '编码类型分组', 'app_code_define', '编码类型分组', null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('EMP_EDUCATION', '学历', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('EMP_MARITAL_STATUS', '婚姻状况', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('EMP_PARTY', '政治面貌', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('EMP_STATE', '基本信息状态', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('EXPE_TRANSPORTATION_WAY', '交通方式', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('FUNCTION_TYPE', '功能类型', 'sys_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('HANDLER_TYPE', '控制器类型', 'sys_code_define', '', 'N', 'Y', 'Y', '32', 'C', null, null, null);
INSERT INTO `sys_codetype` VALUES ('LEA_TYPE', '请假类型', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('MENUTREE_CASCADE', '是否展开', 'sys_code_define', '', 'Y', 'Y', 'Y', '1', 'N', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('OPER_CTR_TYPE', '操作控制类型', 'sys_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('POSITION_TYPE', '岗位类型', 'app_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('RES_TYPE', '资源类型', 'sys_code_define', '', 'N', 'Y', 'Y', '16', 'C', null, null, null);
INSERT INTO `sys_codetype` VALUES ('SAL_STATE', '薪资状态', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('STATE', '状态', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('SYS_VALID_TYPE', '有效标识符', 'app_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('UNIT_TYPE', '单位类型', 'app_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('USER_SEX', '性别类型', 'sys_code_define', '', 'N', 'Y', 'Y', '16', 'C', null, null, null);
INSERT INTO `sys_codetype` VALUES ('WOT_TIME', '加班时间', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);

-- ----------------------------
-- Table structure for sys_function
-- ----------------------------
DROP TABLE IF EXISTS `sys_function`;
CREATE TABLE `sys_function` (
  `FUNC_ID` varchar(36) NOT NULL,
  `FUNC_NAME` varchar(64) DEFAULT NULL,
  `FUNC_TYPE` varchar(32) DEFAULT NULL,
  `MAIN_HANDLER` varchar(36) DEFAULT NULL,
  `FUNC_PID` varchar(36) DEFAULT NULL,
  `FUNC_STATE` char(1) DEFAULT NULL,
  `FUNC_SORT` int(11) DEFAULT NULL,
  `FUNC_DESC` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_function
-- ----------------------------
INSERT INTO `sys_function` VALUES ('00000000-0000-0000-00000000000000000', 'Miscdp样例系统', 'funcmenu', null, null, '1', null, null);
INSERT INTO `sys_function` VALUES ('00000000-0000-0000-00000000000000001', '系统管理', 'funcmenu', '', '00000000-0000-0000-00000000000000000', '1', '100', '');
INSERT INTO `sys_function` VALUES ('49F49293-5270-4C72-B7EE-02562627BF03', '基本信息', 'funcnode', '4F7D78BE-CEF2-4B71-9F43-EEF3ABADC5A1', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332', '1', '1', '');
INSERT INTO `sys_function` VALUES ('5FDEE3AB-6D32-4C5F-AD65-EF1EE5FFBAE6', '附件管理', 'funcnode', '1F617665-FC8B-4E8C-ABE4-540C363A17A8', '00000000-0000-0000-00000000000000001', '1', '7', '');
INSERT INTO `sys_function` VALUES ('67BA273A-DD31-48D0-B78C-1D60D5316074', '系统日志', 'funcnode', '494DF09B-7573-4CCA-85C1-97F4DC58C86B', '00000000-0000-0000-00000000000000001', '1', '6', null);
INSERT INTO `sys_function` VALUES ('692B0D37-2E66-4E82-92B4-E59BCF76EE76', '编码管理', 'funcnode', 'B4FE5722-9EA6-47D8-8770-D999A3F6A354', '00000000-0000-0000-00000000000000001', '1', '5', null);
INSERT INTO `sys_function` VALUES ('697BF588-ED62-43BB-B30E-3A7E40E7F1F1', '薪资管理', 'funcnode', '0248868D-BBBE-4F96-B7C5-FAF4E1556570', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332', '1', '6', '');
INSERT INTO `sys_function` VALUES ('8C84B439-2788-4608-89C4-8F5AA076D124', '组织机构', 'funcnode', '439949F0-C6B7-49FF-8ED1-2A1B5062E7B9', '00000000-0000-0000-00000000000000001', '1', '1', null);
INSERT INTO `sys_function` VALUES ('99EAA89A-59E6-4866-9980-21164DA571F2', '考勤管理', 'funcnode', '67CF818A-7AB6-43CB-BDD5-A57B5FC2C512', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332', '1', '2', '');
INSERT INTO `sys_function` VALUES ('A0334956-426E-4E49-831B-EB00E37285FD', '编码类型', 'funcnode', '9A16D554-F989-438A-B92D-C8C8AC6BF9B8', '00000000-0000-0000-00000000000000001', '1', '4', null);
INSERT INTO `sys_function` VALUES ('AD7CE5A0-39C4-4B43-B243-D056BBDF9332', '人力资源', 'funcmenu', '', '00000000-0000-0000-00000000000000000', '1', '99', '');
INSERT INTO `sys_function` VALUES ('B29FEBDB-F5D9-41AE-8C2D-451A00B2C51F', '请假申请', 'funcnode', '642BCD38-28C1-4FF1-A194-535BFAB10679', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332', '1', '4', '');
INSERT INTO `sys_function` VALUES ('C977BC31-C78F-4B16-B0C6-769783E46A06', '功能管理', 'funcnode', '46C52D33-8797-4251-951F-F7CA23C76BD7', '00000000-0000-0000-00000000000000001', '1', '3', null);
INSERT INTO `sys_function` VALUES ('D3582A2A-3173-4F92-B1AD-2F999A2CBE18', '修改密码', 'funcnode', '88882DB9-967F-430E-BA9C-D0BBBBD2BD0C', '00000000-0000-0000-00000000000000001', '1', '8', '');
INSERT INTO `sys_function` VALUES ('D74A8599-7D56-4315-955A-1B6519657DFA', '出差报销', 'funcnode', '69E749FC-16EC-40A1-9F66-722B666A0E5F', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332', '1', '5', '');
INSERT INTO `sys_function` VALUES ('DFE8BE4C-4024-4A7B-8DF2-630003832AE9', '角色管理', 'funcnode', '0CE03AD4-FF29-4FDB-8FEE-DA8AA38B649F', '00000000-0000-0000-00000000000000001', '1', '2', null);
INSERT INTO `sys_function` VALUES ('F8C4DC47-8F58-4420-8FC4-4DB1CE35C0F6', '加班申请', 'funcnode', '7782AD69-8FDC-4F5D-8510-36FD8D3BF249', 'AD7CE5A0-39C4-4B43-B243-D056BBDF9332', '1', '3', '');

-- ----------------------------
-- Table structure for sys_handler
-- ----------------------------
DROP TABLE IF EXISTS `sys_handler`;
CREATE TABLE `sys_handler` (
  `HANLER_ID` varchar(36) NOT NULL,
  `HANLER_CODE` varchar(64) DEFAULT NULL,
  `HANLER_TYPE` varchar(32) DEFAULT NULL,
  `HANLER_URL` varchar(128) DEFAULT NULL,
  `FUNC_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`HANLER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_handler
-- ----------------------------
INSERT INTO `sys_handler` VALUES ('0248868D-BBBE-4F96-B7C5-FAF4E1556570', 'HrSalaryManageList', 'MAIN', null, '697BF588-ED62-43BB-B30E-3A7E40E7F1F1');
INSERT INTO `sys_handler` VALUES ('0CE03AD4-FF29-4FDB-8FEE-DA8AA38B649F', 'SecurityRoleTreeManage', 'MAIN', '', 'DFE8BE4C-4024-4A7B-8DF2-630003832AE9');
INSERT INTO `sys_handler` VALUES ('1F617665-FC8B-4E8C-ABE4-540C363A17A8', 'WcmGeneralGroup8ContentList', 'MAIN', null, '5FDEE3AB-6D32-4C5F-AD65-EF1EE5FFBAE6');
INSERT INTO `sys_handler` VALUES ('439949F0-C6B7-49FF-8ED1-2A1B5062E7B9', 'SecurityGroupList', 'MAIN', '', '8C84B439-2788-4608-89C4-8F5AA076D124');
INSERT INTO `sys_handler` VALUES ('46C52D33-8797-4251-951F-F7CA23C76BD7', 'FunctionTreeManage', 'MAIN', null, 'C977BC31-C78F-4B16-B0C6-769783E46A06');
INSERT INTO `sys_handler` VALUES ('494DF09B-7573-4CCA-85C1-97F4DC58C86B', 'SysLogQueryList', 'MAIN', null, '67BA273A-DD31-48D0-B78C-1D60D5316074');
INSERT INTO `sys_handler` VALUES ('4F7D78BE-CEF2-4B71-9F43-EEF3ABADC5A1', 'HrEmployeeManageList', 'MAIN', null, '49F49293-5270-4C72-B7EE-02562627BF03');
INSERT INTO `sys_handler` VALUES ('642BCD38-28C1-4FF1-A194-535BFAB10679', 'HrLeaveManageList', 'MAIN', null, 'B29FEBDB-F5D9-41AE-8C2D-451A00B2C51F');
INSERT INTO `sys_handler` VALUES ('67CF818A-7AB6-43CB-BDD5-A57B5FC2C512', 'HrAttendanceManageList', 'MAIN', null, '99EAA89A-59E6-4866-9980-21164DA571F2');
INSERT INTO `sys_handler` VALUES ('69E749FC-16EC-40A1-9F66-722B666A0E5F', 'HrEvectionManageList', 'MAIN', null, 'D74A8599-7D56-4315-955A-1B6519657DFA');
INSERT INTO `sys_handler` VALUES ('7782AD69-8FDC-4F5D-8510-36FD8D3BF249', 'HrWorkOvertimeManageList', 'MAIN', null, 'F8C4DC47-8F58-4420-8FC4-4DB1CE35C0F6');
INSERT INTO `sys_handler` VALUES ('88882DB9-967F-430E-BA9C-D0BBBBD2BD0C', 'ModifyPassword', 'MAIN', null, 'D3582A2A-3173-4F92-B1AD-2F999A2CBE18');
INSERT INTO `sys_handler` VALUES ('9A16D554-F989-438A-B92D-C8C8AC6BF9B8', 'CodeTypeManageList', 'MAIN', null, 'A0334956-426E-4E49-831B-EB00E37285FD');
INSERT INTO `sys_handler` VALUES ('B4FE5722-9EA6-47D8-8770-D999A3F6A354', 'CodeListManageList', 'MAIN', null, '692B0D37-2E66-4E82-92B4-E59BCF76EE76');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `ID` char(36) DEFAULT NULL,
  `OPER_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IP_ADDTRESS` varchar(32) DEFAULT NULL,
  `USER_ID` varchar(32) DEFAULT NULL,
  `USER_NAME` varchar(32) DEFAULT NULL,
  `FUNC_NAME` varchar(64) DEFAULT NULL,
  `ACTION_TYPE` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('8FC62FDE-2D17-4EA6-9E89-72DA2D37B58A', '2015-03-24 11:05:30', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4F9748FD-55F8-4DBF-A602-A35054EB7607', '2015-03-24 11:47:38', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D878E382-94D5-42C0-9A87-7E5E1D6A32F4', '2015-03-24 13:06:21', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1B762301-E161-4C56-8F97-CFC5FA967C29', '2015-03-24 13:48:35', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1AD5DDB8-E39B-435E-8E90-2E94F175D85F', '2015-03-24 13:49:02', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5007D01C-B0A2-423E-820A-7D955DF15881', '2015-03-24 13:49:04', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('66B4A4A9-8E4E-4B5C-A357-EC3CF3CF1AAD', '2015-03-24 13:50:25', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('337023F6-ABE3-4C5F-9527-E992E38CD812', '2015-03-24 13:50:56', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('01019332-5794-4ACD-B714-B676482E8C10', '2015-03-24 13:51:04', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F4456556-37EB-4FEE-ABA0-B0DDA69117B5', '2015-03-24 13:52:56', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AACC1E15-8742-4A77-A235-BDC1020A0A71', '2015-03-24 13:53:01', '127.0.0.1', 'user', '默认用户', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BFDFC7A8-262C-484C-852B-7382AB4E9B25', '2015-03-24 13:53:08', '127.0.0.1', 'user', '默认用户', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5C57E38C-C7B7-4320-924B-D803260E8A00', '2015-03-24 13:56:14', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('07D1297F-6102-418A-AC1C-04FC393AEEC8', '2015-03-24 13:56:36', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('563D03F4-976B-4FA6-9160-933DA4AA0995', '2015-03-24 13:56:39', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('273303EC-AE7E-4691-82EB-DB00D832028C', '2015-03-24 13:57:55', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('60885AB5-2E30-4DE8-8580-2F7C6E567C3B', '2015-03-24 13:57:58', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F73285B0-7E78-43A3-95C6-D04B16E20E67', '2015-03-24 13:59:32', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('626A8C4A-236A-4A4F-AA37-34C870B60260', '2015-03-24 13:59:40', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('756CBFA4-BFC5-4C24-937C-A62FC08FC5A2', '2015-03-24 14:00:04', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BBF5896A-E5A4-4ED0-B4D6-2E93D7A160A3', '2015-03-24 14:00:10', '127.0.0.1', 'user', '默认用户', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E02AA2E6-8B6F-456E-B7C0-00064F2B9955', '2015-03-24 14:00:57', '127.0.0.1', 'user', '默认用户', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E3724A06-D3C6-460A-B9B8-80101FF52B8B', '2015-03-24 14:01:13', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('074DB530-39A8-4493-BF5D-F9F49FD76058', '2015-03-24 14:09:26', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('04B3DAB0-B08F-4E5D-BD96-606D254B1BB3', '2015-03-24 14:09:30', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CFCC5F1C-7712-4843-936C-23B0505219B0', '2015-03-24 14:15:38', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('61ECB7DA-FD74-4FF7-83A5-6544C391BC00', '2015-03-24 14:15:43', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('64D3C1DA-07B1-44FD-A95E-F9807FF1CD5A', '2015-03-24 14:28:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('37FECA08-C0F1-414B-904E-4F308F12AC9E', '2015-03-24 14:29:12', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7E3B4602-8A15-4198-9983-37215586830D', '2015-03-24 14:29:19', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E4267427-9FFB-4B49-B718-86D9E350A703', '2015-03-24 14:40:33', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('20E00464-8DAE-4A56-AEAF-FC41C2BE3136', '2015-03-24 14:40:40', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8D3D686D-2A9A-401F-9809-A0E5AF62B4F1', '2015-03-24 14:40:58', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A2CD95C5-5063-4385-9D89-6D1461A6DF39', '2015-03-24 14:41:13', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DA7AE33E-21FB-4994-936F-E5B339875F76', '2015-03-24 14:41:29', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5F6094D6-46F1-4D37-9949-A1395B3BF60E', '2015-03-24 14:43:29', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A9B364BA-DF1A-41E7-B399-922408CE37C8', '2015-03-24 14:43:34', '127.0.0.1', 'AAA', 'AAA', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('14349E55-2420-4EEF-A0C8-D4C6E62DAC06', '2015-03-24 14:44:05', '127.0.0.1', 'AAA', 'AAA', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('52FACADC-A46E-4B67-8132-2B9B7F0487B0', '2015-03-24 14:44:39', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EF4C62DF-9E01-4449-BD8C-79366D75FBCC', '2015-03-24 14:45:17', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('963A6EA3-1828-4DED-A967-8344A25AC92E', '2015-03-24 14:45:55', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E7F4610F-1F81-4BB8-84F5-B5FA0E0138E4', '2015-03-24 14:46:29', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FFDDE41F-04A7-4BF8-BE7C-51E1D20BFD54', '2015-03-24 14:46:35', '127.0.0.1', 'AAA', 'AAAB', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('94489796-578D-44B2-8CE7-7B2E33557AD9', '2015-03-24 14:46:46', '127.0.0.1', 'AAA', 'AAAB', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8372AC26-7274-4D27-80F4-B9610AB29062', '2015-03-24 14:46:53', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9F16C90E-0EDB-4338-BEF1-A77988CF6644', '2015-03-24 14:49:07', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E1DA8507-0DB2-48B2-B082-EA88B421C040', '2015-03-24 14:56:25', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0C24300F-3685-4F8F-8060-E73D1268889A', '2015-03-24 15:04:08', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5611FA5B-9EF2-4E07-A5BB-37A7E890B3B8', '2015-03-24 15:04:15', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9CD1A0A2-1E8D-420D-A0F4-B13F2A84606D', '2015-03-24 15:04:22', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A8815694-9A1F-4F9B-A4DF-DCE5EFC29124', '2015-03-24 15:04:28', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F91F2CEF-CE0B-49A9-B459-08385EF2205A', '2015-03-24 15:06:25', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FCB63A63-9BD5-4702-BD74-CF0A96C23693', '2015-03-24 15:06:42', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('185A90A9-4FEE-4716-BFCB-80C85FFD4C33', '2015-03-24 15:06:51', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('39351890-5B7E-469A-BD9C-EDB6428CDE09', '2015-03-24 15:06:58', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('156770B1-ADCE-47D3-9B40-BE83E45F824E', '2015-03-24 15:07:20', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B8466CE4-EAE4-4292-B76C-19C7D114C297', '2015-03-24 15:07:26', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('05DEE048-3666-4D37-B98D-95ADADCBFB00', '2015-03-24 15:07:33', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('621BC1F7-B9C7-491F-8675-5A2FCA889AC9', '2015-03-24 15:07:38', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E954F514-78EF-49BA-9CC7-B67CCEDB6DA0', '2015-03-24 15:08:23', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A6BACC22-192C-4C7D-8349-1E67CABAB029', '2015-03-24 15:08:28', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5F51F8B3-F86C-4733-A2EE-D4B1256F8838', '2015-03-24 15:08:32', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DF83A282-B25C-40FF-9D49-8400904FEB47', '2015-03-24 15:08:45', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1C058C9E-3271-4A2B-9443-63C5E745AF8E', '2015-03-24 15:08:51', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('022150BA-3DE7-4DE6-9711-FB388076EC02', '2015-03-24 15:08:54', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A5A1474A-79E3-4AB4-8B7A-9F1D96A1F860', '2015-03-24 15:09:00', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E822C054-BFE0-4E1D-BA94-6D46647DCA84', '2015-03-24 15:10:26', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('58D4436B-AD79-4C5C-A728-4542973E3EC3', '2015-03-24 15:10:31', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('54253B1B-A872-4BCA-9781-180EC15DA9BA', '2015-03-24 15:12:15', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EB6DAAB6-F498-48A7-8FB6-5A4A570D758C', '2015-03-24 15:14:06', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6C7B47AA-5E5A-418C-A8E4-8E327A1BCBA6', '2015-03-24 15:14:11', '127.0.0.1', 'AAA', 'AAAB', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5AF59737-1E2A-4983-AE56-F045C020F3DB', '2015-03-24 15:14:14', '127.0.0.1', 'AAA', 'AAAB', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('57473268-81AC-4217-8497-CE679E3CD1BA', '2015-03-24 15:14:20', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7BF71306-4265-4036-A192-43E198B3DE1F', '2015-03-24 15:16:08', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E828098E-5F2B-43C6-801D-B042D511EDD2', '2015-03-24 15:17:10', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F026D7F8-8785-4E5E-A05E-04A34DA61788', '2015-03-24 15:17:42', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A69911B3-B0C0-46A8-A0E8-E8CBCA2CB31A', '2015-03-24 15:17:56', '127.0.0.1', 'AAA', 'AAAB', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E4D562AC-38A4-4355-B1A4-B51933BBEA09', '2015-03-24 15:18:01', '127.0.0.1', 'AAA', 'AAAB', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E36C1861-31F0-4433-A891-2ED527A69A82', '2015-03-24 15:18:33', '127.0.0.1', 'AAA', 'AAAB', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AE1434E4-02D9-4845-AB1F-5EB30FA14DA6', '2015-03-24 15:19:13', '127.0.0.1', 'AAA', 'AAAB', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('229D53DF-BC86-4B21-810E-771582D28C29', '2015-03-24 15:19:17', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('344AB0A2-FF5C-4B2A-BB40-7124D78055C0', '2015-03-24 15:19:21', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B61A7515-FB6B-4115-BA3F-363559DA82A8', '2015-03-24 15:19:24', '127.0.0.1', 'AAA', 'AAAB', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('25A3A0C3-4200-4E41-9749-48A021BF885C', '2015-03-24 15:20:59', '127.0.0.1', 'AAA', 'AAAB', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('453E5131-366E-42A5-B3A2-444A0C3BDB3C', '2015-03-24 15:28:22', '127.0.0.1', 'QQ', 'QQ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D1F7409A-B740-401D-B666-7991CC836C1E', '2015-03-24 15:28:33', '127.0.0.1', 'QQ', 'QQ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B4EAE3DF-5472-40CD-B2AA-F434915ABEBF', '2015-03-24 15:45:04', '127.0.0.1', 'ww', 'ww', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('40C89CAA-F7E0-40B1-B917-14358C9F1420', '2015-03-24 15:45:08', '127.0.0.1', 'ww', 'ww', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('91ABFFA7-E7F1-479A-B3C9-BC100ACAA4E1', '2015-03-24 15:45:23', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B7715E90-357A-4428-A962-D3FEB8C3B4FD', '2015-03-24 15:45:29', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0F256B5F-5558-4A18-9A38-3E9BA7FF4DC2', '2015-03-24 15:49:04', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F0FAA9F8-DD16-46E1-8D3E-0FFEC552DE0B', '2015-03-24 15:49:08', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('122B65A8-2A1B-4937-B7FF-C13488D78D99', '2015-03-24 16:20:00', '127.0.0.1', 'B', '二号', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C37E1580-76D3-4EB5-A07C-4F0335CC4B15', '2015-03-24 16:20:18', '127.0.0.1', 'B', '二号', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D6512606-B9A3-4AD0-A65B-7A0E2706FD61', '2015-03-24 16:20:22', '127.0.0.1', 'AAA', 'AAAB', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('829663D5-85F6-47CD-A6EC-F415CEBB230A', '2015-03-24 16:21:28', '127.0.0.1', 'AAA', 'AAAB', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7728188A-86BC-4AD1-A326-0404752D1777', '2015-03-24 16:21:36', '127.0.0.1', 'vv', 'vv', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('24040AEE-B755-421F-B2F3-D85481452EE6', '2015-03-24 16:23:15', '127.0.0.1', 'vv', 'vv', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('16BE2BFE-8693-4A83-B300-24BD5BF85333', '2015-03-24 16:23:21', '127.0.0.1', 'vv', 'vv', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0A7DAC4D-B03D-48A1-872D-DA143356C713', '2015-03-24 16:23:32', '127.0.0.1', 'vv', 'vv', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('98DBC938-B4F1-4857-8EA0-0B42C78B956F', '2015-03-24 16:23:37', '127.0.0.1', 'AAA', 'AAAB', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DEC54475-F796-4C5A-902F-EF3A32CE0816', '2015-03-24 16:24:32', '127.0.0.1', 'AAA', 'AAAB', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0851D01C-70B3-4929-8AF5-D4009F6E24C7', '2015-03-24 16:24:56', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B0CDCE6A-4BC1-489F-B1C8-828F7FACCFAB', '2015-03-24 16:25:01', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('CA6111CA-80EB-40B2-8234-43D58E9CFAF1', '2015-03-24 16:25:07', '127.0.0.1', 'vv', 'vv', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1C909A77-6824-47B1-9DED-5F2AF1A832EF', '2015-03-24 16:27:44', '127.0.0.1', 'vv', 'vv', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('761D26C8-4B7D-4A2C-810D-7B0CE49BC2BD', '2015-03-24 16:27:48', '127.0.0.1', 'vv', 'vv', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2965CB2E-B794-4ADD-952E-922B496DEF47', '2015-03-24 16:31:15', '127.0.0.1', 'vv', 'vv', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3D99CBDF-47D1-4B48-A3A6-E601B3B63B68', '2015-03-24 16:33:38', '127.0.0.1', 'vv', 'vv', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3141149F-FC27-4E7F-8F66-8D3C6C5D2C41', '2015-03-24 16:33:46', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C2FF3F0E-4AA8-4FAB-B800-5899197370FD', '2015-03-24 17:00:53', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0DD04489-86DE-4B2B-B53E-BCE67B1C1651', '2015-03-24 17:00:57', '127.0.0.1', 'vv', 'vv', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('899B0CE1-8C31-494B-A8C2-5BFA3DD4DD22', '2015-03-24 17:08:58', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BDF041F9-7FC5-425C-8CED-D2C32A14F395', '2015-03-24 17:51:24', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1B315B2E-30B4-44A8-A1B3-0C67B70B5BCE', '2015-03-24 17:55:36', '127.0.0.1', 'vv', 'vv', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('940D8F68-CAA2-4CAA-BD1F-E03158FA1853', '2015-03-24 17:55:40', '127.0.0.1', 'vv', 'vv', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1FCE1F96-CC3E-41EC-B9ED-14DA47A3AEC5', '2015-03-24 18:39:26', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DB21A872-90BC-47EC-9237-B6DE253B3BAB', '2015-03-24 19:30:33', '127.0.0.1', 'vv', 'vv', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A28FC928-46B7-4950-B626-653591FAC0D2', '2015-03-24 19:32:50', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('96EA30DE-8C55-4B87-AC16-A3C2090E4250', '2015-03-25 08:50:46', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8B0B14E6-3AAB-4D5D-B56F-C071988EA61B', '2015-03-25 09:25:39', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3EAEA7E8-696B-4C4A-AD57-87E18A24CF9A', '2015-03-25 09:25:45', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7505C7C2-A4FD-46D4-8E85-DCCA2463C334', '2015-03-25 09:27:21', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B35D8729-9606-4C61-B2A3-F03A512625F4', '2015-03-25 09:27:32', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0C0B7547-1C07-427C-B301-CAF34DD4680F', '2015-03-25 09:30:34', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5EA4116F-E68E-49A8-84B9-EF743F4E3BD1', '2015-03-25 09:39:00', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('05DF1813-2DCE-4088-B346-6ED018435B44', '2015-03-25 09:45:48', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F3CC19FE-8016-4EFD-8BAC-488F43AD640A', '2015-03-25 09:46:58', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9A07F31C-DE30-425E-ACE5-BA095DE4DBAA', '2015-03-25 09:47:18', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EED91DB9-481F-4EF8-A2D9-91DF1E03284D', '2015-03-25 09:47:22', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('797EEE71-26A0-4B21-B794-0F791893363F', '2015-03-25 11:37:20', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7263D3D6-3F96-48A3-883E-0580E7E2C053', '2015-03-25 11:37:25', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0D92C4FD-F3F9-4695-BA55-25DEBD5C51BE', '2015-03-25 11:44:42', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6E96D0A3-F2F4-499E-A0D6-3B8FFF8E77E2', '2015-03-25 11:44:53', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('034346D1-A2EC-415E-B971-E5E331056D56', '2015-03-25 11:47:40', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('87A81679-6D1A-49C9-B0A2-B8B61A20AAD4', '2015-03-25 11:47:45', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F3BE9A6E-0041-47A1-8273-8B59C2F91876', '2015-03-25 11:47:50', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('28E61229-F48C-4AC7-AF2B-91477EC4F771', '2015-03-25 11:47:56', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E11C95FA-1944-4261-B298-5AC04B4B2D68', '2015-03-25 11:51:10', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DE089D63-E7BF-4926-BFDB-CB6DC4817797', '2015-03-25 11:51:14', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3AF95958-CF58-4885-9D75-65DEB0427A20', '2015-03-25 12:00:29', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('13059D50-43B2-4501-90CC-F58C6624F4C0', '2015-03-25 12:01:19', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1AFE88D7-F1AE-4EED-8FE3-040E41E81D48', '2015-03-25 12:04:25', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A3690B03-0B3A-4CB8-9727-3E07A48C1C7F', '2015-03-25 12:13:08', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5F92A0CC-B284-465E-A19B-82D05884C1A6', '2015-03-25 12:18:02', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('14B34135-4FCD-4141-BD43-038F9702298A', '2015-03-25 12:18:10', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('976388FA-3275-43FA-ADF7-CD6E9A9322DD', '2015-03-25 12:29:16', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('213ADC4B-BEA9-41DD-8334-310A36541515', '2015-03-25 12:29:26', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('51A8B224-B817-4F5A-AEC2-0E8912447FD4', '2015-03-25 12:29:51', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('30E1E612-F663-452E-A632-F028CA750A97', '2015-03-25 12:29:55', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DCC0AAFE-7B84-44A9-8651-A0524ED43BCD', '2015-03-25 12:30:34', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3837DF1D-DC18-4CDB-B495-F567AECCBBBA', '2015-03-25 12:30:41', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0469E42A-8CCF-4C2B-BCBB-C901CCC54A2E', '2015-03-25 12:31:11', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4508E6AC-C81B-4B92-9A77-BFBEFFD6F07F', '2015-03-25 12:31:14', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0148E443-E43A-40CC-A09D-C6C1DD9B18D7', '2015-03-25 12:35:06', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6EC6BF5A-C0EB-46B5-9139-F4037D6CB66F', '2015-03-25 12:36:48', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4283694F-5413-4CA1-AC45-50EC90735986', '2015-03-26 09:25:05', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A1F7D66D-825F-4247-8A4D-507B9A43A4F9', '2015-03-26 10:10:24', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EE44931F-15C2-44E8-B87D-E99F49F09354', '2015-03-26 10:24:54', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('46FAEC8D-F5E0-4BD9-98F2-DBF0A0A2AFCB', '2015-03-26 10:24:59', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5421453C-5CA7-460F-A230-F1B0CB04F3BC', '2015-03-26 10:26:23', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('ACD46FBD-26A8-4373-9AB0-155E791E631D', '2015-03-26 10:26:27', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('03236CB7-67FB-406B-84CE-F326C205EB49', '2015-03-26 10:27:07', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('006AB549-4CFE-4698-9843-FA87D5C37BF5', '2015-03-26 10:27:20', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5BB3B899-1553-44C0-9A72-CE942CE95E16', '2015-03-26 10:40:27', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D5A555FD-6F3F-479A-8821-CF554DC778D4', '2015-03-26 10:40:31', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3090D82F-E196-4865-8D99-9BE3D4DA9DB6', '2015-03-26 10:44:53', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A9C9BDB5-3989-4DAC-BDA5-CA8033139086', '2015-03-26 10:44:57', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2FB9A772-914F-43BD-86B1-390ECB5C81E6', '2015-03-26 11:48:33', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2317D685-2D86-4987-B61B-9E32DE0BF05A', '2015-03-26 14:40:02', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9226175A-FB0A-4C17-A4C4-01D61A7CFD6B', '2015-03-26 14:40:07', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EF88EE16-CE17-4A8B-9C09-90309CF77F44', '2015-03-26 14:40:15', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E6BC1325-0E2F-4895-986B-3150987652D0', '2015-03-26 16:30:49', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C28A8687-1082-4050-8FC9-4689246ECC7C', '2015-03-26 17:32:56', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9D0435E7-090D-4DA3-A872-5E89C8EC1D1C', '2015-03-26 17:33:01', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E6D80600-5A72-469A-A76A-49E062ADB8AD', '2015-03-26 17:33:10', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('21B10954-9B70-4613-8B8A-BC7D34810058', '2015-03-26 17:33:24', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('71EF8076-5B7C-4404-8EC7-473D04711930', '2015-03-26 17:33:29', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('66FABC25-C288-44CC-BB8E-7CF62F240129', '2015-03-26 17:33:32', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('570BAB0A-DEE6-47AA-8CAE-63CAEDBC1885', '2015-03-26 17:33:54', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3A8106C8-6AAC-4A13-BFEF-4EBCB3B56D7F', '2015-03-26 17:33:59', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1DD41C7E-B0D0-422E-8C24-50F27AD73AF5', '2015-03-26 17:43:03', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('88C4451E-9582-4318-AE9E-528BC0FAFE66', '2015-03-26 17:43:06', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('519DC3CE-EC54-4FC9-AF47-5FE69F00FA2E', '2015-03-26 20:13:43', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2DBF6431-6B9B-4E90-B695-2BA4E8B2E57A', '2015-03-26 20:29:59', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('750C8BB4-24A7-4E88-B5E4-25ECFA420241', '2015-03-26 20:30:05', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4DBB3207-FD55-460C-8B8E-6DC65838EDA6', '2015-03-26 20:30:09', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('04161951-D405-4016-899E-E0025440C154', '2015-03-26 20:30:13', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D1CF1063-40E3-4336-842F-CF35F57DDAB2', '2015-03-26 20:31:54', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E09406B9-8E6B-493E-8724-C253A0EE6CA3', '2015-03-26 20:31:58', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('07C9A34D-1D4D-4793-9B5D-33ECDF54AFC8', '2015-03-26 20:32:02', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E8BEDA66-5AD9-4BC8-8310-618338499D3B', '2015-03-26 20:33:52', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BBDBEAC5-79C8-457A-92ED-6FB818A8A389', '2015-03-26 20:33:55', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9B7C83EF-046B-4D5E-86B5-9B78447C1E11', '2015-03-26 20:33:59', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3C5EFCC4-A604-4D59-AF2C-BC7AD9FD6AF8', '2015-03-26 20:34:03', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C781B5F0-36B6-4BDF-B5DF-C0260E965AFC', '2015-03-26 20:34:08', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BC74BAFD-AB65-4F8E-B782-8CAD2C6FB5AB', '2015-03-26 20:36:13', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('16C1B9DD-D942-4A36-A3B1-93A8F455E33C', '2015-03-26 20:36:20', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A1DE8610-E4FB-4E51-8D07-FD8CEE9DD803', '2015-03-26 20:48:15', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DADFD644-70A8-4330-9B7E-9FDD7B5B0D83', '2015-03-26 20:54:38', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EBB5635B-0217-4675-B72C-BF273C084E58', '2015-03-26 20:54:49', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DBE02BE9-ADDC-4B19-B5A4-242CDCB0CD4D', '2015-03-26 20:54:53', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6604A8EE-527D-468E-A002-465066152FB5', '2015-03-26 20:54:57', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A929FC6A-8E17-4D82-8F96-03AC8F4ABFC4', '2015-03-26 20:55:02', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BFB933BF-5994-4C6B-A8C3-AA72313A83E3', '2015-03-27 08:54:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3C65A2FE-427F-4171-9150-4B82388DD8A0', '2015-03-27 08:55:57', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('38C3087B-5C77-4B85-B30A-1C96406E58FF', '2015-03-27 08:56:03', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('021126CF-3C5A-420D-9527-A2199221E295', '2015-03-27 08:56:08', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('622E1AC3-FDA7-4E42-AA1F-7A4F2B18B0DC', '2015-03-27 08:56:12', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4ABAB292-38C9-45A2-B58E-761E62220FD9', '2015-03-27 08:58:57', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('717C24F9-7413-4696-A357-3229B86B7067', '2015-03-27 08:59:01', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C1FC9D95-463D-4FB1-94BC-4D68D3FCD81C', '2015-03-27 08:59:29', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1F0A144B-19CA-4C24-B282-62FE1BCA8B60', '2015-03-27 08:59:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C3C775FB-B7F6-407A-BDF2-3907934A2B5A', '2015-03-27 11:06:21', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0CB8615E-8054-45D7-BF88-5089E4818325', '2015-03-27 13:10:42', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('13D4D9C2-AD60-4DC3-AD90-B37DFFC4763B', '2015-03-27 13:18:55', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A7C53D61-D5D4-4AC2-B0EA-8732E747F2AB', '2015-03-27 13:19:00', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('710F49F5-D8F6-4DA1-95CC-D0F4397A2AFB', '2015-03-27 13:19:08', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F7ABBB69-1CE8-4FBD-8D60-6A581DE596FF', '2015-03-27 13:19:21', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A7E9C456-1EED-40B8-8045-6D5B0B7D59F0', '2015-03-27 13:19:25', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E6315B87-4A19-4D52-96E0-FEE1D4820857', '2015-03-27 13:19:31', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3A7019AE-41AD-431D-AAF4-5C4EAC0C370E', '2015-03-27 13:40:05', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2AA8341C-01C9-486E-A7A5-673E3CE5F0B6', '2015-03-27 13:40:10', '127.0.0.1', 'QQ', 'QQ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8E53F1EF-0526-4CA2-9DE1-89078856E642', '2015-03-27 13:40:15', '127.0.0.1', 'QQ', 'QQ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5B95BEE0-A54E-4A6D-B360-C294775E6044', '2015-03-27 13:40:23', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E01D9193-338B-4744-A927-6A9EFB8570FD', '2015-03-27 13:48:45', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ED92217C-6D58-444D-A06A-795A0F1F6738', '2015-03-27 15:57:19', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('88817C34-20E7-4FD4-A113-E43FC6996BAE', '2015-03-27 15:57:29', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1E17266D-58AF-45CE-A744-DF1AF61E3AC2', '2015-03-27 15:57:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1F84D140-159F-4D15-98DF-ECD3A4918B33', '2015-03-27 16:05:23', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E5B53AD0-734A-4F79-945A-07B5C5998F3E', '2015-03-27 16:05:27', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D9EB8E92-D90D-48E6-8D83-D89A8F5C25B8', '2015-03-27 16:05:32', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('768B53E4-3BA6-4B49-B3A8-A0E0159DA43C', '2015-03-27 16:05:41', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2BD2F0E0-8698-4738-A644-6980B3C63984', '2015-03-27 16:24:01', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7B1A9675-41A3-4B31-8B34-62558D1C2613', '2015-03-27 16:24:06', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F1D28D7B-B9CB-4B2C-BB39-129721EADF54', '2015-03-27 16:45:32', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('CC5A0F09-FBCA-472D-B418-356DA3F81DEE', '2015-03-27 16:48:03', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('162E7212-DCE5-4751-AA0A-229D2C7865DA', '2015-03-27 16:48:10', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2EBD24D4-7B7F-4053-B02C-8B6B021E79C8', '2015-03-27 16:54:29', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0DB02CB7-0382-4DC0-90DD-3B46BD75E172', '2015-03-27 16:54:40', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A42C0C3A-D5DA-4395-9587-530AEC3AA358', '2015-03-27 16:54:44', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B3EA255E-E6A1-4331-A8ED-445DC5164EE5', '2015-03-27 17:08:39', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('094EDA36-E4BE-434B-8938-3794CBB9188E', '2015-03-27 17:19:31', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2B2F0B48-7036-4A56-9273-909BA848A916', '2015-03-27 17:28:26', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('32FD8EBF-C296-48F2-AF00-4A1EF9671FE0', '2015-03-30 08:26:23', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A0F09455-09CF-479F-B2B7-FD19897A4D5B', '2015-03-30 11:44:01', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D413FD4B-5E7B-421E-93A5-C6E25472A788', '2015-03-30 11:44:17', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CBFC9AAB-E64B-4C40-A68C-3C29BFF4D34F', '2015-03-30 13:03:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('755A2065-BCE0-4323-A594-4E6A7DC402FE', '2015-03-30 13:14:37', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('061D12B2-E848-4094-A007-65F6B741B51F', '2015-03-30 13:34:04', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('27DA943E-35B6-4E44-8D04-E19CB9DB25B1', '2015-03-30 13:34:07', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B808DCA1-C556-4690-9C80-DD4F2B6E2DBE', '2015-03-30 13:34:18', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BB041AB5-A310-4A6A-81CA-93822DC4C76B', '2015-03-30 13:34:27', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9791DD72-AB57-4E7E-AF3D-C904C15C0550', '2015-03-30 13:36:27', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BDEB84F3-B5F0-4C78-8374-E5406FFEFFEE', '2015-03-30 13:36:37', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('90B44B63-18A5-4680-9A87-081CF0346C3D', '2015-03-30 14:44:43', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B8C9BDA9-A079-4950-88FF-4E12AB133BC1', '2015-03-30 14:53:14', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('075E7F96-C55E-404B-B999-AD803E8A23BB', '2015-03-30 14:53:20', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EE366146-C6B0-45A7-8238-3D5E9A8FC4D9', '2015-03-30 15:02:45', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AC64A72F-6738-4288-9698-20F00931434A', '2015-03-30 20:37:04', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F3FC875B-DB30-4BA3-B71C-ECC3070BF028', '2015-03-31 08:32:07', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('359586E3-425D-4E4D-B57B-886871A62D07', '2015-03-31 08:42:05', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B22C28B6-2FF7-44D1-B7E9-CCF08BFFB840', '2015-03-31 08:42:06', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F2A20D8F-A0C8-4C21-91FF-50BE8BA6E2E7', '2015-03-31 09:20:03', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6EDD8E06-F6E2-4FF0-94F2-B748DEC9EC2B', '2015-03-31 10:01:13', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2195DF2B-A3C8-4118-AF6F-A1E19AB4419F', '2015-03-31 13:23:04', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9C7C4CA6-620A-4057-A7E9-F969A6C05CCD', '2015-03-31 20:59:05', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C837AECD-5649-4CF4-BFC7-DE6F0A472A53', '2015-03-31 21:05:06', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BD6CB5F9-C4D2-4D6F-B80A-5AFD9006C470', '2015-04-01 11:22:43', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('57BFBE70-58DA-4EFB-891C-7EA406A7149E', '2015-04-01 12:56:01', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C54C3E35-1B4F-46BA-B3D6-D30B33A58B7C', '2015-04-01 13:59:41', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('39C3266C-987A-45DA-8728-62548329927A', '2015-04-01 13:59:45', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CEC86EC4-231C-4D05-B792-9C126C5BC795', '2015-04-01 13:59:49', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6F30748C-F5D3-4924-94DD-E60A33373FDC', '2015-04-01 13:59:51', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('103E4C6E-3F60-455E-B4FF-7FC16E6C54F9', '2015-04-01 14:00:58', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E42B20F1-BAD7-4018-9A99-0BF9E8149738', '2015-04-01 14:01:04', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A78CE248-C6A5-4CD1-9C42-CEC533931087', '2015-04-01 14:01:08', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('054B36A5-4BE8-4E0B-A98D-6B0E2DAB64D3', '2015-04-01 14:01:11', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('96E729A9-90CC-4E55-AB0F-FCD2A12DFB71', '2015-04-01 14:01:40', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AFBD5CC2-4925-411F-87FC-838476F8CB99', '2015-04-01 14:01:45', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B70A8FE7-4C74-4DD5-9C43-168374A83179', '2015-04-01 14:02:15', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E02512B6-1B1E-4AFD-8F5A-2E44D9F01ED2', '2015-04-01 14:02:18', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5F509376-F12C-46A6-AD0C-CDF421A5D75B', '2015-04-01 14:29:12', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0C948443-8D10-4DC4-BD81-D4278B4988E2', '2015-04-01 14:29:13', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('47E20617-DE0B-4685-BE85-1DFBF43B1E3E', '2015-04-01 14:29:24', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9A68188D-58A1-42E5-A53E-AC26677FF0EA', '2015-04-01 14:29:29', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8EBABB96-2C7E-4A5E-B620-3880C29FBEE8', '2015-04-01 14:29:43', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E1E6E773-928A-4B3D-B3FD-82962B16FC89', '2015-04-01 14:29:46', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('449F9530-557E-41AC-8D49-66D632BAD961', '2015-04-01 14:30:00', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9EE714D8-7C97-4CAA-A006-22D04E38DC78', '2015-04-01 14:30:05', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7F36A1D5-2A70-47B3-B130-08882CF51588', '2015-04-01 14:30:22', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2FC31030-7F83-49AD-99A0-76264888ABE5', '2015-04-01 14:30:27', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('65D2E30E-EFB2-467A-8F8A-E12CFD58B48D', '2015-04-01 14:30:44', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4263124B-C90C-49E9-B5B9-9E11F18171AA', '2015-04-01 14:30:46', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CA4B6382-FC61-47AF-AF3D-123E8BE215AE', '2015-04-01 14:45:10', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D72429B4-41A4-4E9F-BFA1-36DA20077F1D', '2015-04-01 14:45:12', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BBFF8906-B821-4483-A253-87623C186DA9', '2015-04-01 15:52:05', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('75709C3B-EFD7-4312-ADB8-F85F97590AE2', '2015-04-01 15:52:09', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E4F8D15C-23E5-4A12-8750-8816703BC6D0', '2015-04-01 15:52:21', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8C04E511-605E-4744-A943-1BB8C8146BE2', '2015-04-01 15:52:24', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('549FEC55-042D-44FC-81D6-A9DE469D678C', '2015-04-01 15:52:38', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('996BB962-8285-474D-9412-F49C8E82DE31', '2015-04-01 15:52:41', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6E8B6E05-E7F1-4D1E-960D-84BCD2D4BFA1', '2015-04-01 15:53:12', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8D02ABF2-B371-4FE2-AD71-BABF92FDDBD8', '2015-04-01 15:53:16', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FF100B3C-A72E-4954-851B-D2131DF63CDA', '2015-04-01 17:16:11', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8ADFBA9C-CFA4-457A-831C-799EA4187D05', '2015-04-01 17:16:13', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('31032568-2781-4DB7-A7F2-22E777EDF211', '2015-04-01 17:31:16', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2276DF1F-C7F4-4C84-A745-A6E26950921A', '2015-04-01 17:32:01', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('576D0011-9B08-43AE-8615-FDD29E960100', '2015-04-01 17:32:56', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('374653D3-541C-415C-8D26-607FE50DF042', '2015-04-01 17:32:58', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E6895B01-ED73-4FA7-9099-7871EF3060A4', '2015-04-01 17:33:26', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6F078967-7402-4FD9-A3A9-D92AC6255BB9', '2015-04-01 17:33:29', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AA257EC8-51EA-4BE7-B86A-D94A53467273', '2015-04-01 17:36:51', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7CED7A0E-051D-4B99-B6E4-BB487C6494BE', '2015-04-01 17:36:53', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('50C0779F-6683-4C19-8626-E1668C93441B', '2015-04-01 17:37:10', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6A1FECB1-2C1C-479F-A49B-E9E6CDC89780', '2015-04-01 17:37:13', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('65BE1BEF-DC6C-42A2-BD2D-1153E16A1020', '2015-04-01 17:40:26', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FD377AA6-035F-4301-9F86-9F2F0816E504', '2015-04-01 17:40:31', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C100C736-BBEC-4485-BC05-DEF6DD214B88', '2015-04-01 17:40:44', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('45DB5125-3789-410E-84FE-77BCA547E2B9', '2015-04-01 17:40:47', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E15961E9-A8CE-497E-B2C0-407A0AA9C09F', '2015-04-01 17:45:25', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BDEE538A-0496-440A-9380-CE967086D61D', '2015-04-01 17:45:29', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3BED140E-21DB-4A58-934F-128E00B8D737', '2015-04-01 17:45:38', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('CF7F0D9D-CA4A-42E5-BCB4-F085F4D407B7', '2015-04-01 17:45:43', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E5CB673F-36D9-43A2-930F-9866C70C8E2F', '2015-04-01 18:07:33', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3C204468-3C04-4BB6-8A46-87D651F00F2A', '2015-04-01 20:54:35', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('67BAFE37-F1AA-4C4A-8E93-417A8149AA82', '2015-04-02 08:39:30', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CC87CCD6-8C15-4C05-ABB2-60BB6519F5D9', '2015-04-02 09:57:59', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8EC3EE75-9F2D-4619-A464-6AA9BAD4719E', '2015-04-02 09:58:06', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('30714BB2-E88A-4270-AB65-B31E15D66D5C', '2015-04-02 09:58:10', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6174D26A-96B1-46E7-B994-EF4525A4485A', '2015-04-02 09:58:14', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A3A98933-24D6-4706-92F8-75B88C8CA8FE', '2015-04-02 09:58:29', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4D6942A2-E6D9-4844-9137-D5CD94AFC3D2', '2015-04-02 09:58:32', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E2FB00FF-4E23-46E5-91A2-D928349DD799', '2015-04-02 09:58:41', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('12171039-DEDF-41F0-9980-9EA2D74CAA8C', '2015-04-02 09:58:44', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6A5F38AC-017B-445C-8332-97275F2B2F7D', '2015-04-02 09:59:11', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E6E114E0-A469-41D8-B226-A12EF4DAF158', '2015-04-02 09:59:14', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0977C074-39B4-461B-9B03-4EC1A70DD46E', '2015-04-02 09:59:19', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8727BD7B-F94B-469F-9A94-0A3CD4D1A385', '2015-04-02 09:59:22', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AD681AE4-E9F4-4BB8-B887-DD2D429333EC', '2015-04-02 13:05:54', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1782E696-9B0A-43A3-BE42-8C80D9ED7195', '2015-04-02 15:10:46', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0731DDB4-DE53-41D5-BF79-B429C880D87D', '2015-04-02 15:10:49', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0CA575A5-7121-4C37-BBE9-E8AE0B6021D9', '2015-04-02 15:11:09', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EAECC773-E682-41CC-B2BD-0661AA1FD4E9', '2015-04-02 15:11:12', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F011366F-A8F2-4CA2-9310-AD686E77FAF3', '2015-04-03 08:27:18', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8EE53814-31BF-4404-800F-2473B9A73F10', '2015-04-03 09:58:28', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F3A96456-10D8-432C-AAD9-420ED6E2391D', '2015-04-03 09:58:35', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4ED664BA-3153-48CF-91CC-1EB7427AF880', '2015-04-03 10:06:49', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8104D385-1B87-4699-A618-1EEE53206008', '2015-04-03 10:06:58', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BDF91C8A-ED31-41AA-A6EE-801F455E71A6', '2015-04-03 10:07:00', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('042A93B0-DB64-41CC-BE46-91D4C7DB4A22', '2015-04-03 10:09:23', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8E696881-03C7-4678-9C72-EB923A62F4C4', '2015-04-03 10:09:28', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9922BC92-281E-4C17-8E9C-2EC4F7BD4D3A', '2015-04-03 10:09:31', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4BA0D15A-C9E6-42E0-891C-AFFDC87D5C42', '2015-04-03 10:13:49', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FD5AD07F-C99A-45FF-B83E-C118538D200C', '2015-04-03 10:19:03', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1CF8AC59-CAF8-4180-94F0-2715EFD0B716', '2015-04-03 10:20:18', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('45FAF3D2-566B-41FA-B40C-536C23808CA6', '2015-04-03 10:20:25', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BE9C1587-D036-4408-9132-FC860D67A48A', '2015-04-03 10:24:56', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('817EEEB6-03F0-468F-B8C4-7A85CB8099C8', '2015-04-03 10:24:58', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EE8B05A4-3D93-42A7-BE51-8BBA49098FB3', '2015-04-03 10:30:22', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C9BE75CA-D3A2-4137-952C-3063C489B02D', '2015-04-03 10:30:24', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('590B8E7E-C0C7-4F79-91C3-D354102E9FAA', '2015-04-03 10:33:03', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('983AEB71-575B-4645-8341-2E9CA23FCF95', '2015-04-03 10:37:36', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('963F39BD-D074-4C28-9121-9F1E6E77CA2F', '2015-04-03 10:37:48', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2C6FE4BB-B3C3-4159-9A48-A658875F466A', '2015-04-03 10:37:50', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7179A7C8-8F23-4E4C-90A4-09B1B6E79A57', '2015-04-03 10:38:24', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3D291466-A4F9-42C7-8724-08B68E029FEA', '2015-04-03 10:38:27', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2D92EFE8-1941-48D6-AC61-34CA09C0671C', '2015-04-03 10:38:58', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AFE56178-A1E5-4EFB-BCB8-0385A8B745B2', '2015-04-03 10:39:01', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A0C02A1A-F97B-4011-9B27-DEE0DE7090F3', '2015-04-03 10:39:11', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C7C90498-43E0-46EB-8CC5-4B34CD840709', '2015-04-03 10:39:14', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AEDF0774-814D-4422-B5D4-54C42C27A8D0', '2015-04-03 10:45:14', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('11CB141F-069F-4723-8FC0-87A5DE1B69D8', '2015-04-03 10:45:16', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4A291EF6-E643-44AC-93B8-64FF2AB6CA38', '2015-04-03 10:45:58', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('02472883-1569-429F-AAA2-F982EC0E4AF7', '2015-04-03 10:53:31', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('97CFE63C-7F18-489C-B4BE-709ED99BCBB2', '2015-04-03 10:53:37', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('508A3552-C3AC-4692-BD48-FE4F88842100', '2015-04-03 10:53:39', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C851FD4E-75EF-4430-A537-AE461BF16EBB', '2015-04-03 10:56:32', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D24D0C5E-0AE2-426F-BE4B-4850C3617FC9', '2015-04-03 10:56:35', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('72604E2C-FF32-4B22-A27B-B2B2412CC5D0', '2015-04-03 11:08:30', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AF138FD1-E46A-4C97-B906-30EE72796ECE', '2015-04-03 11:08:32', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5D2D9C0A-2DCC-4529-9063-C34626AE5F7D', '2015-04-03 11:20:12', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('47E150D5-45EF-46DD-BEB8-5CCDA4E9620E', '2015-04-03 11:40:36', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('47806F86-90C8-42AC-B9ED-FA0643A670DD', '2015-04-03 11:40:39', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('15C25181-5338-4A01-B18F-6DA4A0ABA35A', '2015-04-03 11:46:32', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3035EE79-F117-4480-A61F-49C4506962A4', '2015-04-03 11:49:16', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CAADE59D-4619-4B99-8850-3AEA8100D7B9', '2015-04-03 13:10:08', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('018FB5CD-7FE5-47ED-88CC-1A36E3E7A953', '2015-04-03 13:34:27', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EE70FADC-A632-45E7-9E4D-E1FB036FD673', '2015-04-03 13:45:42', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5EDEC86F-5BF9-4B67-B9DF-AEC30BF23C96', '2015-04-03 13:50:12', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0CD25BD9-D3C6-44DD-BCAB-83CD00B2D2F6', '2015-04-03 13:57:49', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2BD67EF7-5047-423C-9C39-3726491AC840', '2015-04-03 13:59:16', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F708ED81-878D-4DA5-895F-6F92FBC838EC', '2015-04-03 14:01:49', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('81693847-6384-4990-99EA-36A2569F4A59', '2015-04-03 14:03:19', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5DB8D578-A06D-41AF-A929-371AA83C1051', '2015-04-03 14:06:11', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3910D0BC-56E9-472D-A21A-5AB71F9E97CB', '2015-04-03 14:06:16', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F3E562CC-FC06-429B-8C78-514BB2416433', '2015-04-03 14:13:24', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('35240A4B-1B76-4A0F-AADA-33FDC38E997A', '2015-04-03 14:13:26', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('09C8D76A-E186-4A42-B666-577968F8E2EF', '2015-04-03 14:14:32', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('489A0125-0A31-46B6-9B45-04964EE5B3AF', '2015-04-03 14:16:38', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4A7FBE25-6433-46E4-A154-6E75BCA8D0C4', '2015-04-03 14:17:24', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2D588BFE-0AE9-470F-83ED-AFAFD88FD6DD', '2015-04-03 14:17:26', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D809BEA3-B5CE-4C75-94D8-F4926444F27F', '2015-04-03 14:19:16', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7895EEB3-3A31-4484-9253-E04B16EE9A26', '2015-04-03 14:19:20', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B3B7D9CE-FE25-467C-87D8-A13F4DD55041', '2015-04-03 14:19:24', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E9A78B77-3C8C-498B-9157-688202F343E0', '2015-04-03 14:19:28', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D7F577C7-F743-4A01-9AB1-7CE5F198C440', '2015-04-03 14:40:54', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('075B14E1-90C8-4CEA-A91A-5FBE67F0C8D3', '2015-04-03 14:40:56', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('969CC0E0-5054-4000-9940-7B98939C5FE4', '2015-04-03 14:43:17', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8999AF1B-7A91-487F-AD51-753E860DE94F', '2015-04-03 14:43:20', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('771987A0-B811-4BD7-8C66-A5DB7653546D', '2015-04-03 14:44:09', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D41C706B-6ED2-4C91-B61A-7F405EE4E053', '2015-04-03 14:44:12', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8E77317E-C6E5-4E7E-81F4-7D2479019CD3', '2015-04-03 14:45:19', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('04121885-B973-455F-81D7-6038387786D7', '2015-04-03 14:45:22', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C3E088DF-55CE-471C-98A6-BE3B1B992D5D', '2015-04-03 15:22:28', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BBD879B3-E3C4-4FF7-9836-CC2EB4D13C0A', '2015-04-05 19:55:39', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FF81CD87-ABC1-4F8E-8830-6680F5474B9F', '2015-04-05 20:29:52', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8D287A2F-86A8-4976-8910-00C58A8C9376', '2015-04-05 20:30:01', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A3730B51-0178-4932-88C6-8315A9327339', '2015-04-05 20:31:46', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('759BCFA1-8731-43D7-B838-BED62C4B446A', '2015-04-05 20:45:19', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9A51C070-72D8-4D60-91F1-F7879AC9D3ED', '2015-04-05 20:45:26', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('56FA3396-4F83-471E-B5CB-BE7D714B7F2F', '2015-04-05 20:45:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2EEB451D-973F-4BE1-B21A-BB6441BC9D07', '2015-04-05 20:47:29', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A244500B-01C6-4D8E-B31C-BC46C3FF0157', '2015-04-05 20:47:32', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B2812DB3-486E-4F4D-BAD6-47F460306674', '2015-04-05 20:48:44', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BD978CD2-A89A-494F-AE06-D7D0116BAAC7', '2015-04-06 19:59:26', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9A746F24-ADA5-45A3-ACA7-77B6D2B9D7AD', '2015-04-06 20:19:03', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('424B55C9-121C-49E8-94DB-57328B9FB905', '2015-04-06 20:19:05', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('93C0C496-00DF-4F55-8507-302F7CCF1A4D', '2015-04-06 20:49:50', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FC799FBF-0E68-4ADE-83E2-7CE04BBDCAE9', '2015-04-06 20:52:31', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FCA4F2B9-2BE1-49DC-AC26-FD07DB452E5A', '2015-04-06 20:52:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EEE8F759-684C-4600-9529-D4535995A83D', '2015-04-07 08:29:58', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('52153B43-0500-4A19-9AF5-07392F3909E2', '2015-04-07 08:37:06', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E36A6E63-D18C-4B23-AB87-C163A90F971D', '2015-04-07 08:37:08', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A9A0D5FA-6904-4EA1-854D-204A42A10AC0', '2015-04-07 09:23:47', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E0DEB62B-4C89-47F1-BCF5-01A701692AB8', '2015-04-07 09:23:50', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8FA482EC-0DE1-4870-B393-73B52E80E2C8', '2015-04-07 12:57:15', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0E5529FE-373B-4BB3-BC64-E73AE5A01C8B', '2015-04-07 16:15:07', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('482D8B65-A611-4B64-A414-E82E68A20050', '2015-04-07 16:15:10', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3707E9C0-D861-40D9-B124-E0B0D845FB86', '2015-04-07 16:15:23', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C417B9E3-8188-4561-9F0A-27934806E70A', '2015-04-07 16:15:26', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F94DEDDE-0BE5-44B2-9A21-D28818FA6647', '2015-04-08 08:35:55', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('70BE5B08-5DB3-4B32-8893-BDD492806F20', '2015-04-08 10:06:43', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B9CF5740-9F90-42F6-8F6F-A70BA18DF417', '2015-04-08 10:06:47', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A73C179A-1054-4747-8F45-FD13A335A98C', '2015-04-08 10:07:02', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BC1D1C97-9E2C-435D-B622-FC50A92869C2', '2015-04-08 10:07:05', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('407096B5-C7F2-4291-AB72-A6D712CF6D22', '2015-04-08 10:20:19', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('36BB7515-8F47-43E0-BDEA-49D508BF853D', '2015-04-08 10:20:21', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A104B3EB-65CC-44EE-943A-A1762CE40081', '2015-04-08 12:29:13', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('80C0DE25-D6C7-4700-AA5C-9F513E65A1C5', '2015-04-08 15:26:35', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FCAB4067-AFBD-43F5-A149-7F5E6CE40102', '2015-04-08 15:26:37', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FD5302FF-2EAE-430E-8C6D-311CFB7B3520', '2015-04-08 15:27:11', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('CA06367D-2A38-4C9A-B605-52213EFF0429', '2015-04-08 15:27:14', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D2CCB273-ECBA-41F4-B6F1-0D74EC14B92F', '2015-04-08 15:29:35', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6C5BF6B4-1CF2-4529-AEE3-053469CA2C63', '2015-04-08 15:33:00', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0C59C279-92ED-4932-BC78-8235E7B8DBAD', '2015-04-08 15:59:14', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('30E6E134-5797-4A83-8A5A-2BFDBCC8CD82', '2015-04-08 16:02:28', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A064446B-1F7A-4AE8-8B04-8E4251D75840', '2015-04-08 16:16:20', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('798F4591-6013-4E45-B034-3408C1489E2F', '2015-04-08 16:59:57', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A90B2337-15A2-4544-896E-827411A0B8AD', '2015-04-08 17:01:16', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6CCBB9C2-097A-4674-A3BD-29B6FF7BD194', '2015-04-08 17:03:06', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('41C53203-CD79-424D-8563-DD8B4DA4A85C', '2015-04-08 17:04:09', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BAB35AE0-73D9-466D-AFFB-6EFFD5703B13', '2015-04-08 17:05:40', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0F4D0068-351C-4BA9-A5A8-64137A4EA449', '2015-04-08 17:06:35', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3D410F4F-E5EF-42F4-A166-226D44DC0CF7', '2015-04-08 17:09:32', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('21DE284B-52A2-44BF-83EC-BDACB5C1E406', '2015-04-09 08:17:55', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7BEAD381-D2F4-4376-A00B-B0DB5394973F', '2015-04-09 08:59:22', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('71D58A37-18D7-4415-9121-D518CA128C92', '2015-04-09 08:59:25', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DFC8994D-FA26-4A8A-ACDB-8F3DC190B635', '2015-04-09 09:02:39', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A7640220-358E-42AC-A071-42D86B3A7181', '2015-04-09 09:04:22', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A5B5E663-6E99-4FF1-BB15-2C2A6CE2E781', '2015-04-09 09:07:11', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BBCA9824-B33C-4F54-8084-9B96DAA16706', '2015-04-09 09:07:13', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B995CAE9-1864-438B-923D-B025FF0A21FF', '2015-04-09 10:28:13', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C87566C3-EA17-4388-A15B-950124EB5C71', '2015-04-09 10:28:15', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8AF03635-71E9-433E-8529-95D62D9F0892', '2015-04-09 10:29:20', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BFFAF036-9A0C-42D2-8EEE-B0204925F600', '2015-04-09 10:29:21', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B8DB50AB-B720-4C1C-97DD-1723C6E5308B', '2015-04-09 10:29:22', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('716AB40A-F98C-477A-8552-739B74AFD2C5', '2015-04-09 10:29:24', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C718CC0F-B5F0-4486-B444-45432AB9353B', '2015-04-09 10:32:15', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('161A75D1-EC19-41FC-A2D9-16DA6C9679F3', '2015-04-09 10:32:18', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('59D222C6-9373-4000-9A77-10EBD9457946', '2015-04-09 10:42:03', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A3924D6E-0762-4EC3-BB1B-3172032A8F5F', '2015-04-09 10:42:05', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D2E57204-0776-44F8-9D3E-8CF8A13B0C4B', '2015-04-09 10:42:19', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E0B89D76-2064-4FB5-BB85-51285BB596B6', '2015-04-09 10:42:21', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('405E5941-FA1A-48E1-83F8-81D153744ADB', '2015-04-09 10:43:10', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BE2275EF-4C36-49A9-8C3C-FA738FAECE04', '2015-04-09 10:45:18', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('57C9A123-2D4A-428D-86F3-B66A1F47E6B3', '2015-04-09 10:45:20', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('770BD40D-CE35-400C-8FEE-773ABF488770', '2015-04-09 10:45:35', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DC21F75A-906F-4530-BE05-6BAF5265A842', '2015-04-09 10:45:37', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('51852F72-81DF-4A10-93BC-C6165643FFDB', '2015-04-09 10:49:45', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4D6B724B-4E52-4DE1-A5B0-1621C6CD2E5E', '2015-04-09 10:50:36', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('79B8E88E-39AB-4DAC-912C-772C025C626D', '2015-04-09 10:52:00', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4C18493C-7A4D-4025-9266-D4B7151337E1', '2015-04-09 10:52:02', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('419A1575-7A61-4F9C-8358-8D5AA1720AAC', '2015-04-09 10:52:30', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D73ECB77-590E-4225-AFF4-1645F2E98EB5', '2015-04-09 10:52:32', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0C979404-F1CC-4291-8E86-A3488602A05D', '2015-04-09 10:52:39', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EA10FCD2-64CC-4101-ABA6-724F7A9DE784', '2015-04-09 10:52:42', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8D5EB692-EFD9-4BB7-9A63-8EDB0638B7B0', '2015-04-09 10:53:12', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B42ED958-091E-40A3-9EBA-A03E62E6A8A4', '2015-04-09 10:53:15', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('44FA60F9-B0D8-4896-B1D1-9A3FDB9DA789', '2015-04-09 10:53:28', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BAC4A9ED-9AA3-4413-8C8C-884AA5D14875', '2015-04-09 10:53:32', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('193258A0-90C4-41C6-8D3F-65E8F40C2720', '2015-04-09 10:53:45', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7EA01A0D-FC53-492A-8E7D-FB912B541DDB', '2015-04-09 10:53:47', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6221E921-BF8F-412D-A01A-4C394B95CB19', '2015-04-09 10:54:03', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('50179BAA-899D-4C0B-A000-B35938E2F580', '2015-04-09 10:54:06', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('93F78D7C-F6AD-48BA-8115-3AF5322C4E21', '2015-04-09 10:55:34', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1ACD03B2-8B7A-4C26-872F-6F2188A3F48D', '2015-04-09 10:55:36', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('749674E3-85D9-49D7-A98F-7ECF7753B6C9', '2015-04-09 10:55:47', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0CB0D21E-7C19-46F3-90A8-F34B904CE5E2', '2015-04-09 10:55:49', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('34932A5C-A6CA-48FF-8DBA-54C3A68D5449', '2015-04-09 10:56:07', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('97921614-1CB8-498A-B444-AB77E1552EC3', '2015-04-09 10:56:08', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E11F54DB-510C-41FD-B49B-68520A850A26', '2015-04-09 11:02:10', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('393F01A3-CED9-4644-98A0-226ECDB85DAE', '2015-04-09 11:02:41', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('644E2C94-166A-4CB7-BDAB-2B870528F748', '2015-04-09 11:06:08', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3B140488-91B0-461F-9322-624E13065427', '2015-04-09 11:09:44', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1561AFA1-8F35-416D-A47F-1C8D00408012', '2015-04-09 11:11:03', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1EE98EA9-3F9A-4E86-A60C-F19C3A78214E', '2015-04-09 11:11:05', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('62E82B30-03DD-4A93-B0EB-C64103516C23', '2015-04-09 11:11:25', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('469C2D30-0485-40FB-9B95-64FBB8434796', '2015-04-09 11:11:27', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2D8C0839-DECC-448F-95EA-B3DAEC040163', '2015-04-09 11:13:38', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('24822D10-0278-45FE-8BBD-EBA569AF1057', '2015-04-09 11:13:40', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E9F01A36-8FF9-4E66-8B68-ADE2E57FDC6D', '2015-04-09 11:14:09', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A833D09A-5EE3-4680-B0C4-29AF82A7E990', '2015-04-09 11:14:11', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9BF0B688-F6BF-4B78-B2A8-C29D6215962B', '2015-04-09 11:15:06', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3A4FE585-EEC7-4E2D-B089-23F2B3CBBDF6', '2015-04-09 11:15:08', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8A5D8FF8-196F-492B-B42E-7F24221D9A9A', '2015-04-09 11:16:00', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3CB013C7-1350-49DF-B002-28C11A9BCBA6', '2015-04-09 11:16:02', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C132B9A7-BDD6-47FE-92DC-B72FC5632D8E', '2015-04-09 11:30:00', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('325222D3-DC72-49C0-913E-1736D5E21226', '2015-04-09 11:30:02', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E4823831-3539-4CBD-9E85-05A3C4FFAB2D', '2015-04-09 13:18:03', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('674913AF-A5E8-4146-8B45-992BF8C1839F', '2015-04-09 14:03:54', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('057935AA-D711-4DAE-9E98-FAFB34D3C990', '2015-04-09 14:40:32', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3D210B1B-8BC2-4C49-A7D9-AA83416C07B8', '2015-04-09 15:15:46', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EEFDAC34-815E-4A83-8175-73F022614A06', '2015-04-09 15:15:53', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EE22867A-51C1-467F-BC6A-2C37473EAACF', '2015-04-09 15:15:55', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('48E238E3-0004-4B91-B539-261FED82626E', '2015-04-09 15:19:20', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('22BC1F95-0B2F-427F-B715-25C0B5AF2DDD', '2015-04-09 15:19:23', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E7CECBA4-FDD9-499A-AE74-050BD3AABE59', '2015-04-09 15:21:19', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('76320053-DD19-46B9-AE1A-95E45F7D108D', '2015-04-09 15:21:22', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D8FDCC97-CF67-41D4-97C5-EB321165EF51', '2015-04-09 15:22:03', '127.0.0.1', 'YY', 'YY', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AE3AA65F-9E33-419C-B973-2941373F923F', '2015-04-09 15:22:05', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('90792AAE-0E81-4E66-A0F5-084C89593ECA', '2015-04-09 15:24:01', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('36BBECCF-74C9-4380-8395-F436A8F29BBD', '2015-04-09 15:43:03', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E221DB22-F007-44EE-8CDA-01D68AE1A4C8', '2015-04-09 16:00:58', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B4A2C874-57D5-444D-BFD3-14770C066C90', '2015-04-09 16:02:57', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2DF6A150-397A-4ABC-9D69-DD2C4BF1853D', '2015-04-10 08:17:26', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('90170A8F-03BC-414D-820B-2C36608AE925', '2015-04-10 09:19:17', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AA963164-4F5F-4435-BC82-5F52ED1E8D92', '2015-04-10 09:19:26', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5E8F4CD8-D9A6-4A7D-BC1E-C74DDBD48B5C', '2015-04-10 09:19:50', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2574BC07-5BA0-430E-9938-E5B0C413C255', '2015-04-10 09:19:51', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0A4A2C84-C798-4740-AF65-30DA7C2CFE1C', '2015-04-10 09:19:53', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3C619827-605A-4841-8624-D5215AD7B0FD', '2015-04-10 09:20:04', '127.0.0.1', 'YY', 'YY', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('523949B7-3EBD-485E-BAA4-B515216AF10B', '2015-04-10 09:44:30', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C2683E48-90A5-4C7B-8997-F4DBB4F66CB6', '2015-04-10 09:49:59', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('948A54C2-183E-4407-A0C8-33DC0F6D72DC', '2015-04-10 10:31:30', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A8841A79-394C-401D-BE63-8929C27F660F', '2015-04-10 11:17:58', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('70DDE962-D209-4647-90B1-BBE7000BE601', '2015-04-10 11:18:01', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E7A4B0B2-6550-433D-BD59-0239AAF770D2', '2015-04-10 11:18:29', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('532DDDE7-8F52-4A41-B4E3-750DD78B1551', '2015-04-10 11:18:34', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C32C2BCB-2D3D-4F73-9915-1C917CB88358', '2015-04-10 11:18:44', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DDDF6344-D365-4280-A5B5-B78346A01647', '2015-04-10 11:18:50', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('34EADF09-F928-4BB4-897B-213361C56E98', '2015-04-10 11:21:51', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3031DBA8-FD1E-4026-8D4D-CC4844E8C3FA', '2015-04-10 11:22:21', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9EBB5125-E8DF-4213-B1AE-C707503E14CC', '2015-04-10 11:22:29', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5C797F6F-F45B-417E-8871-629C000F9797', '2015-04-10 11:25:07', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B79E47B4-506A-48B3-B323-2AE7E0AF75D6', '2015-04-10 11:25:12', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('705CFC26-B167-4E9E-A187-AC1589AD0B85', '2015-04-10 11:26:48', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('72A26E0D-392E-42C4-92C4-67F552D0B21C', '2015-04-10 11:26:53', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AA156E39-1A0E-4F01-8852-63B4BA3A1A05', '2015-04-10 11:26:56', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ED35D3CE-6F4A-4D2D-9B30-F665C972AF46', '2015-04-10 11:27:01', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('52F0B0D0-9D59-4FE1-BDC8-22CF83CD96E6', '2015-04-10 11:27:04', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4204CAFE-3C41-476F-898B-58A88F16C9F9', '2015-04-10 11:27:10', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('42F042A7-8DE9-4FEA-ADF3-952074754738', '2015-04-10 11:27:20', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('481DE636-D36E-4060-91A1-4B96AA1A3153', '2015-04-10 11:27:26', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C0D5E4C7-1A47-471E-8462-11AE1EF8C21E', '2015-04-10 11:27:28', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7D36F65A-EB24-474D-A000-64DD8E6AB685', '2015-04-10 11:27:32', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9423B789-24E3-4EAA-B801-9668BF37F4BA', '2015-04-10 11:27:35', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CA5BCFDF-6833-4DC8-B8C7-BA3F4683399A', '2015-04-10 11:28:07', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FCD4C792-DB97-4E7E-A705-0F6FC1922958', '2015-04-10 11:28:25', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B6D0B403-4220-46B4-A187-C1B57FAEE9B7', '2015-04-10 11:28:27', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('51E97E86-3CD4-4952-995A-863BF597B2D0', '2015-04-10 11:28:30', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E1AD9FE8-3856-4181-97CA-C22556D4D504', '2015-04-10 11:28:34', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8A931B3D-A58B-4B00-9D28-D08995638B68', '2015-04-10 11:28:37', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DD5C6BBD-5A93-44DE-BD29-523143BABAB5', '2015-04-10 11:28:44', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4285FF77-816E-4466-9EEE-CF2C1EC2104C', '2015-04-10 11:28:50', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ECF5FAB8-D321-4ABE-9ED2-B965AC3F462A', '2015-04-10 11:29:01', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BED25B99-AF4A-43CF-933F-D2C53F2FA4E8', '2015-04-10 11:29:04', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9A55AF31-5BAB-4C2A-9C7E-38E2B314342E', '2015-04-10 11:29:05', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('833C3949-A4E3-45B5-BC33-A7119C898405', '2015-04-10 11:29:08', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9355702F-2120-4D5E-8EB5-1B0EB2E8EF5B', '2015-04-10 11:29:16', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B92C573C-EDD0-4E23-BAA8-64D8638FFAC6', '2015-04-10 11:29:19', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F0D8FA93-03DF-43E7-A04A-317922154957', '2015-04-10 13:17:53', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('41AA743D-4D2C-4910-9748-D23EB2175B66', '2015-04-10 13:18:04', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FFCCA4D4-32BB-4E57-8417-A04652B4A383', '2015-04-10 13:18:06', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C7AA36AB-5B0A-4462-A03C-8E827C28A877', '2015-04-10 13:18:11', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0D4580A9-E062-4474-899E-12D79E988831', '2015-04-10 13:18:15', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('87B373B4-A5DF-4106-B269-4237F048C50B', '2015-04-10 13:51:11', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F84660D1-C26A-4A33-85F8-2A2357CC47A6', '2015-04-10 14:00:37', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('578F1C2F-37DF-407D-AD82-2A610BF54B84', '2015-04-10 14:00:40', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B2300665-A7A5-4341-B313-9B9544CF5AFD', '2015-04-10 14:00:45', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('52F2A08B-E192-4A8F-AD10-78706E447C85', '2015-04-10 14:00:48', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('40E1C877-BD7B-4B26-8A46-9CB36C9A0863', '2015-04-10 14:00:54', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C8EF8BB2-DB01-4F10-B71C-3FCC7BCB8FB4', '2015-04-10 14:00:57', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8E14AFF1-F65F-43C7-9F92-1AF7123C6876', '2015-04-10 14:30:32', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E24A6BF3-B161-4D2C-8B10-8481D1ACD534', '2015-04-10 14:30:35', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('357DE484-02C5-4ECB-8855-93F7D90016B0', '2015-04-10 14:30:38', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3262A891-7B3D-4FBB-BEF0-403F826D40D9', '2015-04-10 14:30:41', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0C5BEB19-18A9-4090-B8B6-273D6DFEED5B', '2015-04-10 14:30:46', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('22087C52-4C13-4526-A36B-1E0E48CD725E', '2015-04-10 14:30:52', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B0B683AF-FE5C-4AB8-9967-2DFABBC21735', '2015-04-10 14:30:57', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('144E38AD-A3C5-403B-9809-FF73EB36FB68', '2015-04-10 14:30:59', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('805F6146-EDFB-4675-B0EF-4A15878F0F1E', '2015-04-10 14:39:05', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2C68E669-D6AD-4743-93AB-8C4988165695', '2015-04-10 14:39:08', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('46469EEB-E8DE-4345-950F-FFE9F58C547E', '2015-04-10 14:40:56', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9F0D2D0E-4458-49DA-8B01-D401A658BBF5', '2015-04-10 14:40:59', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E7E3E750-58AD-4608-9348-1811B8600E37', '2015-04-10 14:41:02', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('466128CD-C7A8-41A3-AC51-776B2B563327', '2015-04-10 14:41:05', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2A8C8749-8151-4EBD-88A9-278188B3FC7C', '2015-04-10 14:41:08', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A973FA36-F3B8-42BE-A78A-63D6ACBDE2E7', '2015-04-10 14:41:11', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('341B3250-E9A7-4009-AF10-516CB00E2184', '2015-04-10 14:53:52', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('72E7D4E4-48AC-42D2-B9FB-07FDCA52D68B', '2015-04-10 14:54:05', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AD857878-24CA-4B3E-A64B-BB6B0B49CF74', '2015-04-10 14:54:57', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('85D27692-4404-4D12-8542-30A86057ECFD', '2015-04-10 14:55:00', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('684AF82D-89C9-412B-B184-E397DD64602F', '2015-04-10 14:55:54', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7A0DED07-BAB6-47FC-81EB-29F403949E96', '2015-04-10 14:55:56', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8911987C-7C65-4F5A-BD5F-3ECA6D183435', '2015-04-10 14:56:12', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('46744184-B1A8-4B2A-9274-ADD20C9DAFA6', '2015-04-10 14:56:16', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AD193170-BD9E-45D4-B3DF-D18CDA64FE52', '2015-04-10 14:56:44', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AF5FA4B4-15AA-4E07-B0DD-A9022B4CCD5A', '2015-04-10 14:56:47', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7FCE9916-084C-4B19-B07A-4FC8545C7E07', '2015-04-10 15:23:41', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C3C524F8-1305-4213-A186-5CECC993C9F4', '2015-04-10 16:03:51', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('229AA56B-E233-469A-A715-704C8E7B7379', '2015-04-10 16:10:28', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('56C2113B-6BEA-4495-B92A-6839A8DB958F', '2015-04-10 16:10:43', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('965F7928-B01C-46B8-9956-8EE143565DC7', '2015-04-10 16:10:45', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C1478BC7-BC52-404D-B6A4-DB3F4A68963C', '2015-04-10 16:10:50', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('09B94B9B-55E6-44F6-B8C2-D8C6342C99FC', '2015-04-10 16:11:45', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5ABED851-1F73-42C0-95DD-EC459207C816', '2015-04-10 16:11:47', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7E3E23B6-9C0A-4192-8248-3D7185E4AF43', '2015-04-10 16:11:58', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('536A76CE-63CE-4474-9AB6-6DE677063071', '2015-04-10 16:12:00', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E8C15A72-3566-4E32-97F7-85E7D0258EC4', '2015-04-10 16:12:32', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6D067279-60CC-4C8E-A873-962C6BEEDE6B', '2015-04-10 16:12:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8EA968FC-821B-4239-B247-3759B6AEEA41', '2015-04-10 16:14:46', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9A261972-B7BB-4E3D-A5CB-805F47A2826C', '2015-04-10 16:14:49', '127.0.0.1', 'qian', '钱', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8BE0747B-8644-40BB-8310-EE272019E828', '2015-04-10 16:14:56', '127.0.0.1', 'qian', '钱', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D4579D93-C6CE-4CDF-B1C8-30DA05456870', '2015-04-10 16:14:58', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1907744D-3424-4890-9707-7FB65CA66C1F', '2015-04-10 16:21:42', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('90BA2522-B94E-4A2D-BD78-A5865CF3360E', '2015-04-10 16:21:48', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('557CF077-17BA-4105-A993-AC9BDE082FB0', '2015-04-10 16:53:40', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EF072561-43CF-4ADB-A512-EFAA8A0D3A44', '2015-04-10 16:54:02', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9059609C-6854-46BD-B267-28A0DFCA9874', '2015-04-10 16:54:05', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('00D5D737-A265-4EAB-9F49-CA700D950309', '2015-04-10 16:54:15', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FCDB5F12-AC9A-49C4-A596-E991E7792496', '2015-04-10 16:54:17', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('17A91FA6-318C-4B4F-89BA-5C1DDF0E58F7', '2015-04-10 16:57:00', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2F96C2C7-FF02-4FA3-9D73-EE14D79B1659', '2015-04-10 17:10:45', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('04D9B234-2A88-448F-BE25-16ED2F91B800', '2015-04-10 17:30:58', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F226D890-A310-4CDB-8803-25B303225B93', '2015-04-13 08:35:57', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('30AC80C7-807A-4F99-9CFA-B8094D803902', '2015-04-13 08:41:20', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5CBC4EBD-FF60-4EFF-A08B-E0E4426E6470', '2015-04-13 08:41:23', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('30E54B8F-7C24-4FBC-ACB5-8A198E83CB8F', '2015-04-13 08:41:36', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DF892DB6-E6F3-4484-97F1-A646943699EE', '2015-04-13 08:41:39', '127.0.0.1', 'zhao', '赵 ', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1F83FFBC-3932-4218-A7E6-D1DBCF4A44EE', '2015-04-13 08:45:25', '127.0.0.1', 'zhao', '赵 ', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A35FC6DB-5AE9-4DC4-B544-E2F52506C752', '2015-04-13 08:45:27', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8F884EAE-471C-4AC1-B1BA-F16844B3E88C', '2015-04-13 09:45:31', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BD8A2F83-65E5-425E-97A7-8B9B2A5A79AE', '2015-04-13 10:51:56', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4FFEE5BA-EF56-4123-BA44-B2BE50523739', '2015-04-13 10:52:04', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0B1C44F2-125C-4290-85BC-A47F92C0068B', '2015-04-13 10:52:29', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B7AAB732-5DF1-4662-B34C-0FF261F3EA72', '2015-04-13 10:52:32', '127.0.0.1', 'sun', '孙', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8ADFC423-9BAC-411D-866F-70C8FBE0100A', '2015-04-13 11:00:48', '127.0.0.1', 'sun', '孙', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3EC27DA3-BB75-4945-B095-5C930F522855', '2015-04-13 11:00:51', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('126ABC08-6DB3-4E20-9E2F-F4A310B0249B', '2015-04-13 12:29:45', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4F493BEF-6DB0-4C98-A412-B5C03977EC76', '2015-04-13 15:26:41', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8DDD4D69-BD0A-40F9-A257-5ADC18F0FA7F', '2015-04-13 15:26:52', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C037F7B7-F981-4078-AFDC-EFB0D181287B', '2015-04-13 15:41:45', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DEE87EBE-CA8D-499B-84DA-905A55F997BE', '2015-04-13 15:41:47', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('823BBE27-2569-4CE9-84A7-FEE1E287D4CD', '2015-04-13 15:42:03', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('24E4E936-2508-4926-8CBF-78E81F8489D3', '2015-04-13 15:42:12', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E805610E-DF49-47B2-9A09-C4DD9D433381', '2015-04-13 15:42:25', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('ED70928E-0D16-46BD-A35A-0B710A7C4562', '2015-04-13 15:42:27', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A7FD40AC-4200-413F-BCBD-CD75548BA58A', '2015-04-13 15:42:51', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('12015240-7194-4BF9-B92F-4F22BD9FB92C', '2015-04-13 15:42:52', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2E84E272-8F52-4E5E-866F-3D4860E54278', '2015-04-13 15:46:53', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2897CD08-D6C2-4A4B-8B18-B0A28E21CEE0', '2015-04-13 15:47:03', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('00205CAB-6EED-4F6C-AEEF-F8B1C3977F2E', '2015-04-13 15:50:45', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5B262521-9CB0-4CC1-9047-CCA050603C77', '2015-04-13 15:50:48', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CEDC93A6-326C-41D6-ADBE-4954BF34A587', '2015-04-13 15:55:01', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F4EEB87B-A670-441C-93EE-9869FA0554F4', '2015-04-13 15:56:20', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E15D2078-B914-44D7-9C2C-538A97C7E125', '2015-04-13 15:56:25', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C9AF26C7-56C4-469C-900A-EA66B9ED237D', '2015-04-13 15:56:27', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7BA88C3E-1071-4A30-A6CF-881AF534BFE3', '2015-04-13 15:56:37', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('25B38E72-9682-4935-9459-17500B316864', '2015-04-13 15:56:43', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4DF77E38-DC86-424B-AC02-DA91B5B43DB4', '2015-04-13 15:58:55', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('72A08176-8136-4FE4-AFF0-C5B49FD73B68', '2015-04-13 15:59:07', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('005FAE4D-84D9-4F2A-A914-4B513DC9AA7E', '2015-04-13 15:59:21', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('78BD9FE2-0479-4D00-BF72-1978DCC3DD77', '2015-04-13 15:59:37', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A322300A-28A2-4451-888F-C54067D3BF1D', '2015-04-13 15:59:44', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F6C9B816-5558-4546-BDE3-6917D17CCD2C', '2015-04-13 16:08:24', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('89179004-6BF8-4805-8675-2921A0D60C12', '2015-04-13 16:08:33', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E5F3D605-4B10-4114-B631-627E32926B15', '2015-04-13 16:08:36', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4CFC63E1-398F-48B6-9067-135F8158EAFF', '2015-04-13 16:08:40', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('60D9B190-40DF-40DB-8279-F080CA1A6C3B', '2015-04-13 16:08:44', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E7211894-B15E-484D-BB2E-89D5B6F08DF2', '2015-04-13 16:08:57', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('71518566-C541-4158-83B0-C3F4E1A8668C', '2015-04-13 16:09:00', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('314EC9AD-DD10-4910-AA23-C1542168542F', '2015-04-13 16:10:34', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('03B4130D-5F34-47A0-A433-B855B21F451C', '2015-04-13 16:11:37', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('006AD373-D92C-490B-8DFF-34F63D97AF25', '2015-04-13 16:11:40', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A200AF30-C431-4FF9-9691-E399B4BBF4EF', '2015-04-13 16:11:48', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('ADF28487-8C86-4847-9EE0-4A8D2737D5AF', '2015-04-13 16:11:51', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2912F177-91B7-4D53-98B6-F210F0519CCE', '2015-04-13 16:11:59', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6B39973E-9663-4EEC-8480-5CD4D2270CBA', '2015-04-13 16:12:02', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BFB9C3F3-E792-4FD0-8931-5D26859EFA7B', '2015-04-13 16:12:16', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('05CFDDD9-243D-4236-9482-8CFB2A60A002', '2015-04-13 16:12:17', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B8115136-7743-4FCF-8FD2-3748B15C65BC', '2015-04-13 16:12:35', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('269F4804-55F8-49FF-AAC7-A608A7A533DF', '2015-04-13 16:12:42', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B0833721-C412-4A25-AC5C-269EDD85DF72', '2015-04-13 16:14:53', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('341F305A-D60F-49EC-B031-A744B9FF6FCA', '2015-04-13 16:14:56', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EF48909B-7A4D-4870-AE14-46A94E9B758E', '2015-04-13 16:16:30', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0231D24F-B1C2-463B-BA53-0EB6328BB4D5', '2015-04-13 16:16:33', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('90EC9A3B-53CF-45C9-8145-8459C3FDA36E', '2015-04-13 16:19:12', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5DE92EB6-38C6-4A63-918C-25389F106F30', '2015-04-13 16:19:17', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DFAD5398-80D7-4627-A182-291490EDC5EA', '2015-04-13 16:26:14', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B90952C9-2ABD-47DF-AF88-8BFC94FA1DE8', '2015-04-13 16:31:42', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F0A08E23-66D4-4FFD-8344-4A7A55138D60', '2015-04-13 16:33:28', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('53D014EC-B9F3-4362-83D3-7DA61F8BAB4F', '2015-04-13 16:35:18', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('21ECD903-386D-4F49-894B-3DEC37569699', '2015-04-13 16:41:56', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B1D4DED3-DF1F-447A-BF33-5B966F994660', '2015-04-13 16:42:06', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A1021B79-504E-4C67-A8EB-C868C6656315', '2015-04-13 16:42:18', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D9B30C27-34F0-42F5-82B0-13FB4C1FBE56', '2015-04-13 16:42:21', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('CE824D9E-21BF-4E52-8AE9-EA18E233D2B9', '2015-04-13 16:42:24', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E63D7C64-BA8D-4CAF-826C-B2E1F2DECABE', '2015-04-13 16:42:40', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('ECBE2BCE-7A33-4C93-A337-550432E2D436', '2015-04-13 16:42:42', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A6E6F0CE-667A-4E7A-BCCB-2B25A31A137A', '2015-04-13 16:48:17', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AC612B1F-9993-4B0B-B33E-9BAC1CBAC246', '2015-04-13 16:48:23', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E56E6100-D6B7-4B7A-BAF3-F383D0AACED0', '2015-04-13 16:48:25', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2B16A517-2C8B-4B29-92B6-7F6CB135C4CD', '2015-04-13 17:01:33', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3E558A2C-62D7-402E-ACFF-0C2851B815D0', '2015-04-13 17:11:14', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('180AED06-1B0F-417D-A7DE-C6B513D4C57C', '2015-04-13 17:17:02', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6A1565D1-FE23-4BE8-8406-3472C6F48DAC', '2015-04-13 17:24:18', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('913577E1-76AB-445C-B858-521FD6566A7A', '2015-04-13 17:24:20', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E4F83685-1C4D-4C28-905E-64D40BAF2CC6', '2015-04-14 08:21:10', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7BC7A0CC-4D81-43B3-A135-5E76CF60FA00', '2015-04-14 08:21:18', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3FBB879E-A8BC-47A7-85B6-B683A84CFF9E', '2015-04-14 08:21:24', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('091F5C39-41E3-4401-8279-A88506EAAAD8', '2015-04-14 08:21:40', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('83AA3FC2-49E5-4259-9E3D-F07427F2EB03', '2015-04-14 08:21:47', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('31646D62-EC6C-4CAB-9BBB-8757611A4534', '2015-04-14 08:25:32', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3C88E7DB-95B1-483E-9D41-0C24DCAFF82A', '2015-04-14 08:25:34', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EE65D9B6-6C9E-42E4-A33A-0862322AAC4B', '2015-04-14 08:25:36', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2DB7C733-881F-43B4-B988-8FC96F1AE679', '2015-04-14 08:25:39', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2FB37E86-96DD-4AD0-85DB-37268A32D8CF', '2015-04-14 08:26:42', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BE31CF75-CD22-4FB1-A96A-F48D5CECD43D', '2015-04-14 08:26:47', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C6DCFE29-07BC-4114-BA15-9DC9E218680B', '2015-04-14 08:27:13', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BBEC5FA8-7E90-4CB1-9408-50DC6C0034E9', '2015-04-14 08:27:16', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DAED93B5-6808-42D7-86F2-EBA5E418A02C', '2015-04-14 08:32:52', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('74985223-F062-4AC0-B0EA-FEC8D54FC575', '2015-04-14 08:32:57', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('86009862-F95F-4808-96EA-2A7F0DE759D9', '2015-04-14 08:33:28', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('88273814-5C69-49A0-895A-9244FF28C01A', '2015-04-14 08:34:33', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('57F9F360-90FF-4C0B-88D8-25770425E601', '2015-04-14 08:36:34', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4C24B81F-3664-425E-B2A9-D4D86ABB54AF', '2015-04-14 08:36:37', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F31AFD46-0995-416A-A206-ADEE7E62A040', '2015-04-14 09:01:58', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C56694A7-6CDE-4CE7-A8BF-F693B7501A4C', '2015-04-14 09:08:01', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('221932B0-E440-430B-9B7C-39942F115934', '2015-04-14 09:10:04', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('237C8D8B-F8A0-4662-9311-570C6A22ABBD', '2015-04-14 09:25:50', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A59283AE-0238-4A71-A2E1-25F38A0A2274', '2015-04-14 09:36:31', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('43DC8996-6AC8-4E31-98BF-21F67F6718BD', '2015-04-14 09:39:10', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5268FA48-AD3B-4E18-AC09-6F429F4C4067', '2015-04-14 09:39:23', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B4D81C3E-C4A4-4B1D-9846-BE48AE1746C0', '2015-04-14 09:53:14', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D4200AD4-F928-411B-85A0-064B88F042AA', '2015-04-14 09:53:20', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1262B133-203A-4157-A7AB-A42D024FD22C', '2015-04-14 09:53:24', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('004135FE-BECA-42EE-9975-48C769F6A732', '2015-04-14 09:55:30', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A3B2DE79-3C5E-4DE2-89BC-6F330B35842A', '2015-04-14 09:55:33', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DA8283EE-C583-42E6-B8EB-6D920E7E1AEE', '2015-04-14 10:27:18', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2B90DF17-755F-43A3-A397-9C2531B4707C', '2015-04-14 10:27:22', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8007CA78-E16D-4E35-B37E-942208EBA2E7', '2015-04-14 10:48:02', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DBD3C942-43A5-418D-B2D5-A2CD33A0A97B', '2015-04-14 10:48:05', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('87114F05-5F1C-4FF9-B304-140057927D4F', '2015-04-14 10:50:29', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BC3DC900-9B31-4147-8DD2-BAA3920EE373', '2015-04-14 10:50:34', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9957CBC8-4833-42F9-B020-064A18C494E8', '2015-04-14 11:11:12', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3836D216-12ED-475D-8EE2-F6B5DEDA44C9', '2015-04-14 11:11:13', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D0DBA91D-062F-469A-A1BF-F2CE80E4B370', '2015-04-14 12:42:31', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A7F40714-1458-4A84-90C9-C0C6296D56C3', '2015-04-14 12:46:58', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('48A9850B-A40C-4264-8D66-6558D46CF71F', '2015-04-14 12:47:00', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('533AF2B2-2041-41CB-A99D-64CF1CA24BCE', '2015-04-14 12:53:10', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('570BCBB8-AFD3-49BF-B28A-71F97F38D714', '2015-05-01 13:02:14', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('82C67623-C89D-4385-841C-EE02983ADC71', '2015-04-14 13:29:20', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D95B8C0B-09BB-4EA0-A177-663896CC2696', '2015-05-01 13:30:05', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('46753B4C-97C2-4911-947F-FC90B699BA55', '2015-04-14 13:31:21', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7D8ECB99-707C-4A17-A79B-F6CC25CF7E84', '2015-04-14 13:31:26', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('158D9D84-7E1B-4EDF-B1D9-8377C55648CA', '2015-04-14 13:31:38', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3371F9D8-8D36-40ED-BF89-F3D9E0C790FD', '2015-04-14 13:31:41', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DCAEBBDE-369B-4B2F-BA57-20C13FF1B0F0', '2015-04-14 13:31:43', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E93BFEF1-0018-4242-8AE5-3F2D1B6A335F', '2015-04-14 13:31:45', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0B146D64-DD66-4A20-910E-C8CB0E68AC64', '2015-04-14 13:33:54', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2AB51BAD-DC43-41BA-926D-9F7CF64ACD82', '2015-04-14 13:33:58', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BE47E224-490B-40E3-8F1F-F5A852C73D37', '2015-04-14 13:35:41', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('837C108B-0747-4159-871B-47933B6D46E3', '2015-04-14 13:35:44', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BD9922D1-A6C5-4046-80BE-C1EF58CCB2E6', '2015-04-14 13:35:47', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D9E8EB6F-0AA9-4D23-9160-CC0BF3857D80', '2015-04-14 13:35:51', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2AF7FCF1-0297-4025-B99C-A5AD5DD28878', '2015-04-14 13:35:54', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('627930DE-916F-403E-9FFC-349DFF3A3911', '2015-04-14 13:36:04', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E489C8C8-65DC-4719-8539-15C5B6B9491D', '2015-04-14 13:36:08', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C68567AD-8687-4971-B358-A1AF48633F6E', '2015-04-14 13:37:36', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('33ADFAE2-06C5-419E-A865-F46ACAA2BC41', '2015-04-14 13:37:42', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1AB69A64-AD41-4A49-97F4-09A1D866E381', '2015-04-14 13:37:45', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FE8CEA94-16ED-4F4B-AA64-C1CE3DDCABF0', '2015-04-14 13:38:47', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EE9B09E5-E95A-4DFB-961B-AEF8F631F799', '2015-04-14 13:39:22', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D045F93F-574F-4B4D-9D70-09AD9C35FD7C', '2015-04-14 13:39:24', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D8DA7A1C-2973-405E-8D29-0EB2A34F3400', '2015-04-14 13:40:18', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('ABA6C55E-6A98-4E77-B80E-BFD8D0871944', '2015-04-14 13:40:21', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6F2592A0-63A0-4E27-9B1F-DB1440FC4963', '2015-04-14 13:40:27', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0BD7A309-45C7-44A9-A29E-8F42F0AA2805', '2015-04-14 13:40:29', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7CF226B9-5EFC-4F6A-9F7D-597810B1C7C2', '2015-04-14 13:42:28', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7945950C-94FF-42DF-A9FE-864D6489A70A', '2015-04-14 13:42:34', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BF7D6BC9-658D-4622-AB2B-70BC90FD739D', '2015-04-14 13:42:37', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('99CF8FD3-C365-4697-8658-E96080B2CC65', '2015-04-14 13:42:48', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('AB64BF60-8D21-4800-B20F-6456C87B16ED', '2015-04-14 13:42:50', '127.0.0.1', 'A0001', '张羽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AC72D374-315F-434F-9C80-D19F293F6192', '2015-04-14 13:43:01', '127.0.0.1', 'A0001', '张羽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('95AE14AA-4A16-4ED7-B444-905015FD0594', '2015-04-14 13:43:04', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F729E639-2185-450B-9C3B-CBB22FAD65AD', '2015-04-14 13:54:01', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C6D9F22F-2764-4F9A-A7D7-31845870F6C2', '2015-04-14 14:11:13', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('07010F71-087A-4159-930F-38E1A75C5E36', '2015-05-01 14:12:40', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BE5EA347-6627-4158-9784-8F9B278C3FDD', '2015-04-14 14:18:43', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CCDD3DB8-8C7C-497E-A602-164EF7EF7AE2', '2015-04-14 14:21:19', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EC26317F-ABA6-4617-BE08-612A5E9A566C', '2015-04-14 14:35:40', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9E0565FE-50A1-485D-AD4A-DF41D5B1BF02', '2015-04-14 14:40:47', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('11BCA8A0-2951-4D43-AA19-701AF9A49F34', '2015-04-14 14:42:41', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5D38D63E-F1B6-4337-AF6B-9965E29BD69A', '2015-04-14 14:47:41', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3EC12F94-6AFE-4FB4-8346-C4FCD9D5B70C', '2015-04-14 14:47:44', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EAC6E04E-5587-43FB-9B48-87FE596AA159', '2015-04-14 14:48:07', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7648FCF3-B36A-4FA8-8686-2FE475CB30F3', '2015-04-14 14:48:10', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('81B7D430-CBB6-41DD-ACD2-5FA026FAF6BC', '2015-04-14 14:49:27', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2DE99CD4-507E-4A5D-B8F5-5E32F6EFD9EB', '2015-04-14 14:49:46', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('46956AAA-DBBF-442F-8408-1B18E6F3DAC5', '2015-04-14 14:50:12', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('74EEBB8D-5637-4984-AE3F-CCD3EE1AE150', '2015-04-14 14:50:15', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BCA6C815-7332-43A7-9D95-9D783513F1EF', '2015-04-14 14:50:32', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F34A1780-1306-4860-B013-218DBBD27B48', '2015-04-14 14:50:35', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('07142065-9AFA-48C5-AD7D-5C49967E8DBC', '2015-04-14 14:53:24', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D8899AF5-6446-4FC7-A461-39DD9CF5100A', '2015-04-14 14:53:39', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('105882BB-B69E-4D24-9179-7BDEAB80C6F8', '2015-04-14 14:53:59', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6FBFECC6-E7C6-435F-9516-63A6FEC3492B', '2015-04-14 14:54:21', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('57CAC755-E770-42AF-BFC2-59D71F2CC62A', '2015-04-14 16:03:39', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6792F2C0-EEBB-4470-AC03-68F53374BC91', '2015-04-14 16:08:07', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A06A76A5-C353-4E49-B16A-12A9068182DB', '2015-04-14 16:10:53', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0ECF2F41-C7E1-4848-AA67-5D09CD5D3FDA', '2015-04-14 16:22:06', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BEBF609C-E2DF-477D-8DE6-719BF90DE2CC', '2015-04-14 16:27:03', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('60B03AB7-FCC3-492E-973D-BF4DD7095D6D', '2015-04-14 16:27:11', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BD7504E0-9496-49A6-A72D-A5C9D11E5117', '2015-04-14 16:40:03', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D70062C3-F5DC-4A82-A552-F63607F94572', '2015-04-14 16:44:05', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8967C20B-BA2C-4E63-A3C0-2FE94EB9F73C', '2015-04-14 16:44:10', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('505161C3-2615-4289-9C4C-F7DF55199F5E', '2015-04-14 16:48:36', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FD87AB11-0600-4851-A309-774017875CF3', '2015-04-14 16:51:51', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AD27F21B-452B-44C8-A4A1-0CAC71119C8E', '2015-04-14 16:55:08', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F5E7ABB5-8E8E-4581-BF4F-12DD9D10025E', '2015-04-14 16:55:22', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9327071C-5A60-4E96-AFBC-F03534800989', '2015-04-14 16:55:36', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AAA2FEF0-9C61-4A35-BD10-085D8085D504', '2015-04-14 16:59:34', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F373C30D-6970-4B83-99F2-83B41A762C01', '2015-04-14 17:00:24', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('939D0740-707F-4F97-857B-0CBBFD23DDAE', '2015-04-14 17:01:41', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B7856534-D20F-4AB9-A1B5-062AEA428D56', '2015-04-14 17:01:46', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C1F940D4-00C6-4783-BDAB-9090E02C81FB', '2015-04-14 17:09:49', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EDEC1481-44B1-4D3C-88B8-7B886EE86A91', '2015-04-14 17:12:07', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('05AB654A-6E66-4BCF-9006-220F9047805B', '2015-04-14 17:13:15', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E83C85C5-1D47-4EF6-9876-E4EC6107F95D', '2015-04-14 17:13:39', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F8E39D5C-E5F7-4595-B3C2-D0A0A6078A62', '2015-04-15 08:15:19', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('233F2CDF-2CB5-4DB1-A999-179573809483', '2015-04-15 08:15:49', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2A2BE306-955A-43CC-8820-08E450B7DE00', '2015-04-15 08:19:44', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('616C1BE1-1AAF-452A-8E39-53EEE095FD56', '2015-04-15 08:19:58', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9398C7CB-4C20-48AD-88A8-5155AF58B9C0', '2015-04-15 08:20:22', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('23C881AD-F266-45F8-801C-7617004F97DF', '2015-04-15 08:29:05', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6BD337F9-0066-4619-B92E-44DFE5B621CB', '2015-04-15 08:29:23', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EEF16832-3C64-42ED-911F-0D4C8A7E3B6E', '2015-04-15 09:30:11', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F0253A9E-1288-44C8-B562-1E99B227BF29', '2015-04-15 09:33:30', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('62E02237-1CDF-4A01-B4D1-7EE7D85F3983', '2015-04-15 09:33:42', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('54501346-05CA-455F-847A-17068CE39329', '2015-04-15 09:34:17', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9A377B95-60A9-4CEB-8E6D-6E131A211A0A', '2015-04-15 09:34:52', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B04DCAD4-886D-4B3F-906D-AF64A33114B3', '2015-04-15 09:35:08', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D67C3679-A441-4D3E-8DF5-598BC68FAE53', '2015-04-15 09:35:33', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B190DBD3-D289-4C72-8DC3-347DC4546170', '2015-04-15 09:35:39', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6E108E1A-F94A-4167-9B97-93B9057DC1A9', '2015-04-15 09:36:06', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EBCCCE77-1E31-4D83-8F53-8B9CF9C9E94E', '2015-04-15 09:36:11', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('693E271D-7924-4695-BCD0-763749FBD8DF', '2015-04-15 09:37:17', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('ECDC8020-3D9E-47DD-803D-B6C365FB7AD7', '2015-04-15 09:37:23', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C03BC693-A869-4536-8B63-3FEED9BA9463', '2015-04-15 09:50:26', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('49D77CEF-9559-4FBE-BAE0-BA584B522BD5', '2015-04-15 09:57:28', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9803B8A3-7A67-47FF-AE0C-75E0E5FFBCE3', '2015-04-15 09:57:34', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7972D311-6341-47E0-88CC-EC9B52B7E722', '2015-04-15 09:59:34', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DDD7FC52-6610-46C1-A9C1-677A3E822AAF', '2015-04-15 09:59:42', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9CFE3BAE-110C-4ECB-B3A2-4BC3AF6B4B9A', '2015-04-15 10:04:23', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F580731D-A7E0-463C-9410-E7E2F8EDFDCE', '2015-04-15 10:05:03', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BCEDE7E9-C05A-43D5-B601-117B7621982F', '2015-04-15 10:05:16', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('60BF0093-E4C1-40CB-BF40-CD6BD44BA4AE', '2015-04-15 10:05:39', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('54B67255-8654-4FFF-9F91-68DE188A2F06', '2015-04-15 10:05:45', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0D9C65A0-048B-4679-A306-EB68AA69D215', '2015-04-15 10:06:54', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DF605E95-EAE6-45DB-A346-D22364DFC716', '2015-04-15 10:07:05', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EDCAC484-9FBA-4FBA-AC0F-4E78D57055A8', '2015-04-15 10:08:20', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CEB2928F-B8EF-4CCD-A88B-E604840B60D2', '2015-04-15 10:09:22', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6BC5BF0A-D811-4531-9727-2A5F5C6E8BF3', '2015-04-15 10:09:41', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('ECD1D7A9-BC94-4B39-9404-5BD11A2FA492', '2015-04-15 10:09:55', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('18DCCC49-7B75-47CA-B553-930651E592BD', '2015-04-15 10:11:48', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D65B9DCE-78DE-46AD-B111-F7E4F39ECF4F', '2015-04-15 10:11:56', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3F75630E-0406-4A77-A57B-89C04C4B6600', '2015-04-15 11:19:32', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D281B11B-D168-4380-A2E8-C279D0723029', '2015-04-15 11:33:45', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AB041734-633A-4A1E-BB50-110E51ED87F6', '2015-04-15 11:38:15', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5DD93713-CCE2-473E-AC38-42C054A3F6F1', '2015-04-15 12:43:22', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9E254704-3063-40FA-874A-4BA7E94CED7E', '2015-04-15 12:43:28', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C51B5F73-3C4D-436C-A28D-E89C13D26C38', '2015-04-15 12:43:38', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1C186117-2F65-425B-B7C4-F9FE624D2E79', '2015-04-15 12:43:49', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E5D19165-DEDF-4F2D-8AD3-0E6968A7D950', '2015-04-15 12:43:56', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('177F548E-7E78-4C08-B2D8-826319E672D5', '2015-04-15 12:44:08', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7053BDBF-60E7-4A3F-A55F-2B4EDC9B307B', '2015-04-15 12:44:15', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('38F7F154-34A1-470D-BFF9-B348DC97E5A6', '2015-04-15 12:47:57', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6BC93BDA-25F5-4D06-BD7A-5B9D4AF4ACF0', '2015-04-15 12:48:06', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('07A6DB25-F252-4E29-88E1-2C6C770298DD', '2015-04-15 12:49:31', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('039A1816-5900-43B7-AE17-A669ED473356', '2015-04-15 12:49:39', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5ABEDC8D-5902-43C7-9F8F-C93B99DF3D6D', '2015-04-15 12:55:15', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('2F7E0739-7A9A-4099-A253-9D383C12C465', '2015-04-15 12:55:22', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('078FB7AC-D7D8-4AD5-BF64-F58EBD232857', '2015-04-15 13:24:56', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A3329716-7378-4131-A521-3AF79C1DDB08', '2015-04-15 13:26:09', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('24E9721D-3955-4B98-A761-6DC046379A4A', '2015-04-15 13:36:17', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('46DB68BA-DD22-4747-A2BE-717769904A1A', '2015-04-15 13:44:51', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2F24B82B-E13A-468D-8C37-9D0D9240C083', '2015-04-15 13:48:44', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0588F152-2C57-460F-BC72-7374441C41B7', '2015-04-15 13:54:52', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E9AA371B-9F2A-4CA8-A140-E696BB9D8071', '2015-04-15 14:50:56', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D848BB4D-C7BB-498C-9BBC-CFD3D2E7A4C7', '2015-04-15 14:52:06', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E4631F8E-CA6A-4271-B493-715957560193', '2015-04-15 15:00:33', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E1B87695-8EB3-4995-84FD-B478EC93DC08', '2015-04-15 15:03:18', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3D91A72F-07B6-4847-ACDD-852D6D8F2846', '2015-04-15 15:04:44', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1F1BCC69-0A05-41C6-97F5-3C7BA2694C7B', '2015-04-15 15:05:41', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('11C25AFA-32FF-406A-A50F-5B12513E175F', '2015-04-15 15:14:52', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('43D06F60-97AD-46EF-B2F5-E180C4B15E6A', '2015-04-15 15:55:33', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('21A3359C-D048-48FA-A39A-3D4517ED1A9B', '2015-04-15 15:58:01', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E4552191-103A-4EA5-8C69-9C4A62B04FE6', '2015-04-15 16:10:51', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9221DA07-A280-4452-8D5A-2B85B062CFF1', '2015-04-15 16:24:09', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9AFB254E-627E-4606-9422-8D7D0ACE67AB', '2015-04-15 16:25:12', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ECA3B14E-93C8-4671-954D-BB022B605331', '2015-04-15 16:27:48', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D4758224-A951-4561-AB0F-D409D785D42A', '2015-04-15 16:27:56', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B15C0EA6-0072-45D0-B40F-8CCDB4F2549E', '2015-04-15 16:28:12', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E9721AFC-6454-42C0-B59B-D25667E59E0D', '2015-04-15 16:28:19', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('062A80CF-73D8-4E09-B837-D782635DD538', '2015-04-15 16:33:16', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('22291912-796F-41EB-85A4-39DAFEF719CF', '2015-04-15 16:35:53', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FC46D24A-FC94-4E0F-9B0C-E37BC3E72731', '2015-04-16 08:37:58', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EC83EADC-7443-4649-8193-0DB08F7D69BF', '2015-04-16 08:50:20', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C44DFC9E-2F61-4388-A5A7-DC25FF937A81', '2015-04-16 08:50:36', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F43BFCA3-CE8B-4EE8-B97E-D289DDF34B73', '2015-04-16 08:57:31', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('28E012B9-82E3-4118-A22B-B26CC85FE2E3', '2015-04-16 09:30:33', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3A449F79-DACE-4DEB-868E-CC0E6F77D7D1', '2015-04-16 09:30:40', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2C2E9A49-CEC4-4B1B-BF96-53DFEC8DF319', '2015-04-16 09:32:47', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8E04AA00-070B-4AC6-8639-854902DB6D21', '2015-04-16 09:32:54', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5F54873D-856F-46EC-AC52-579DA3C422EF', '2015-04-16 09:38:41', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3AC7DCC4-1534-40E0-98BA-96C17A25C8D8', '2015-04-16 09:38:50', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7BFD9FB3-1566-41B2-AE08-2CFFF942630A', '2015-04-16 09:40:21', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('39D10148-C598-406F-A456-E9E5252D5530', '2015-04-16 09:41:12', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('486E63C6-322C-4B56-95F0-96A085330443', '2015-04-16 09:51:54', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A5FD23A8-C7D0-4CF6-A52A-039C1DE0E802', '2015-04-16 09:52:01', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('26A0E0CC-0F97-4EB2-9585-2BF80BB79909', '2015-04-16 09:52:30', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B37606A5-3362-4FF0-BF0E-11625568B040', '2015-04-16 09:52:35', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ABB58ED6-1183-4E9A-B226-60DC8F799CEB', '2015-04-16 10:09:54', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('B99957D3-AB7D-479C-8E51-4BB3607B9B9F', '2015-04-16 10:10:02', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('07302D99-4D03-421D-97E8-2C3B62C98EDB', '2015-04-16 10:11:02', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('186D890A-AA04-4A8D-92E2-35BFA558B820', '2015-04-16 10:11:09', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('83995761-5244-4E17-AE71-D1B65109F7D6', '2015-04-16 10:47:48', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4158800C-626E-4BA0-B37B-535B70C43DE0', '2015-04-16 10:47:55', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('473E9951-CF0A-43A9-B9EB-C2E8FF9F397B', '2015-04-16 10:48:00', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('10A23DE5-2C86-4ACD-AE55-E45D77CABEC2', '2015-04-16 10:48:07', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('76B451E4-07DF-46A7-AB40-AC1CDDD1ABE8', '2015-04-16 11:38:43', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0F2871C9-7782-4187-ACB2-14ADECB24606', '2015-04-16 11:38:50', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4C9A6EEF-C2D7-4F32-AD3D-66460BCD99A5', '2015-04-16 11:38:57', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E854B1F3-F4CA-4FB4-B8B1-F48C5859C4ED', '2015-04-16 11:41:37', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7F546E71-E005-4F8C-9B3E-5DF9AD6C9975', '2015-04-16 11:51:05', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('574BD3FC-B3A5-4392-A357-C1E44F01213C', '2015-04-16 12:50:23', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8A0505CD-F096-4B9F-9617-D355B9374F16', '2015-04-16 12:50:51', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D833B1B1-0693-411D-8B93-6D0F4FC4C0EA', '2015-04-16 12:51:07', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F66B0CB1-3921-454E-985B-811B31805EDD', '2015-04-16 12:52:01', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('29A355E5-BB04-411E-ACA7-F5B3C903C312', '2015-04-16 12:52:07', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4D1A7890-B97E-4A55-8DF0-1B4BEF1CADF9', '2015-04-16 13:00:02', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F2953C83-FCEB-44A3-B0D0-871E264AF448', '2015-04-16 13:00:09', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('53EEB3FE-1D44-4D09-8681-2679DC0627A7', '2015-04-16 13:00:14', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E00A051C-CCC0-464D-95C9-B819F713A48F', '2015-04-16 13:00:17', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E6C12453-18FF-4EAD-8248-82FF80296349', '2015-04-16 13:00:23', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1CA634F4-AEEA-4A25-90A7-4262E7057AE2', '2015-04-16 13:05:49', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0A0DE8FF-BD08-447E-8C19-03783F2C6FD6', '2015-04-16 13:05:55', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('369838B9-DB31-4F41-A146-A7CEAC3CD892', '2015-04-16 13:05:59', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D8BC3832-4E71-4384-925C-19DC3922D488', '2015-04-16 13:06:05', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('82F027BF-5C9F-4117-9085-E12BF2E04817', '2015-04-16 13:31:51', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6AFF92EF-2AFF-4AD2-99E3-A3939647AC86', '2015-04-16 13:31:58', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1D3CE1C6-D86C-4522-BB31-848F0CD2F2DB', '2015-04-16 13:34:59', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BCB30235-725F-4D8E-935C-E9C2D65CBA6D', '2015-04-16 13:35:04', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0EB12CAD-3B4F-41F6-B1CF-F3C2340378AD', '2015-04-16 13:35:33', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9C1C97A1-B2E8-46AD-991F-979AE613ADDC', '2015-04-16 13:35:46', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3102CB56-966F-432F-8590-EE4D4570A642', '2015-04-16 13:36:01', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('61B9A04D-ACFE-4621-8EED-75125967CA6A', '2015-04-16 13:36:12', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DF78E34A-C5AE-4C1B-AEB0-01451ACC0BF6', '2015-04-16 13:44:06', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EDE5E96B-B12D-45DC-9780-1135799FCE32', '2015-04-16 13:47:51', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('75DC8C86-1A82-465B-893B-58099D88FCD5', '2015-04-16 13:52:59', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EE3476B0-5D12-4B77-8EA3-570687FD9EA2', '2015-04-16 14:06:56', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('47A12815-A573-49F1-BC2D-D0DA3ACDA30C', '2015-04-16 14:29:27', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2E40CFF4-67EF-42A5-9A6C-AB13063CE97A', '2015-04-16 15:10:42', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E4396F23-C94F-46BE-905B-7F0659217FAB', '2015-04-16 15:10:42', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('19D8B67D-AECE-4823-ADFA-3453A9AB3FC3', '2015-04-16 15:14:39', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BF90FF47-940F-4960-BF81-7D8D4037E727', '2015-04-16 15:16:07', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ECE6F8FE-9038-4256-83BA-3CDCE413DC7B', '2015-04-16 15:21:14', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('857EE8BC-E4F9-4C1F-B416-0C3BD40F6AC5', '2015-04-16 15:53:47', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8D0BDD37-110B-4C2B-8473-9D4ED25F5F94', '2015-04-16 15:56:53', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('31DCD80B-0BE1-4B28-BDBD-08346E83DE10', '2015-04-16 16:00:42', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F8BE2E13-4D12-4DA4-98A2-7D270211B1E2', '2015-04-16 16:03:45', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EAAD9A5C-62F1-4340-976A-01BE194D0FF2', '2015-04-16 16:03:52', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('747E9CEE-13CE-446E-BA3E-A35C3A5CE70E', '2015-04-16 16:03:56', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('02CA4C13-859C-4649-B720-136841F88EC8', '2015-04-16 16:04:02', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E173444E-B1D0-4D61-A76A-BAA9480A77C4', '2015-04-16 16:05:55', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E8EB0878-4402-4BA5-AA78-1DA32312E734', '2015-04-16 16:12:01', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('216F0457-3418-4CBE-BDF5-E9ED393B3E11', '2015-04-16 16:15:04', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C59966F1-304F-45D4-BF0C-AA4FA541C797', '2015-04-16 16:44:25', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('86CD0EA5-CED7-4637-A9AA-6528A55C033A', '2015-04-16 16:47:11', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BD7AEA2C-BC48-47C6-97D2-02B1AFD4FFD2', '2015-04-16 16:47:51', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('06C6FAA9-0ADF-4533-8F94-33EC4D637C43', '2015-04-16 16:50:06', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D8231624-4458-485D-A17A-FB0BB59DBE3A', '2015-04-16 17:34:45', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B6D3E1AD-F075-4763-89C2-233787D0E41F', '2015-04-16 17:34:54', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('165D953A-1538-472E-8BAA-9E7D5E4E0184', '2015-04-16 17:35:22', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5D60738F-0914-473C-88B0-3336F6DDFFCB', '2015-04-16 17:35:40', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('7D50EB03-349F-4434-BECB-0492FEF11EB8', '2015-04-16 17:35:48', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('747769CA-8F33-43B5-A900-D73E79ED25E4', '2015-04-16 17:58:27', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('86BC8AFF-016B-4292-9C27-32F3647050A5', '2015-04-16 18:00:24', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2825DFD7-1EDF-45E2-9E41-191091A987AB', '2015-04-16 18:04:12', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3C2C0502-E19E-4B92-840F-56D25D10389B', '2015-04-16 18:06:31', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BFE7B0A4-1468-4463-991B-278B6C88B168', '2015-04-16 18:11:28', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ED8D40D4-F8BB-4E67-AEA2-4E9DC5DB349B', '2015-04-16 18:35:32', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7C6A0BD1-7B4C-4A34-A24B-9137F54E2D5B', '2015-04-16 18:36:58', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('16A11979-AE26-4DB9-9F52-FBDB51978DE8', '2015-04-16 18:37:06', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('054D8D48-133C-4555-AACF-3891DE57DF66', '2015-04-16 18:37:16', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2EF83769-B885-48F8-9617-85B3B5C1ECFE', '2015-04-16 18:37:21', '127.0.0.1', 'A0003', '孙智斌', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4A06F108-F837-456D-847B-659BB14459C4', '2015-04-16 18:37:28', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5C9AE892-AA22-4BC6-8DC4-747AF12FFF00', '2015-04-16 18:39:34', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5CE2939F-433E-49A0-B28B-0DC985275078', '2015-04-16 18:39:40', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8741E4EB-0276-4E10-BF0B-0D2A9C7C5038', '2015-04-16 18:39:48', '127.0.0.1', 'A0003', '孙智斌', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('656FF125-68D5-4677-850A-BF41ED171DD9', '2015-04-17 08:43:54', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('67E34DA4-10C8-46D7-81C7-23868EB4951E', '2015-04-17 08:44:44', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D070F2FD-24FF-4CA6-AF66-332EF30D9951', '2015-04-17 08:52:49', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5EA77314-787D-4DF7-94FC-70660BC01D3A', '2015-04-17 10:42:46', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D13EB1AB-2CAE-4232-B714-A27F15C608C0', '2015-04-17 10:57:07', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('89F899EA-FB81-4C1D-847F-B5B05EE4ACBF', '2015-04-17 11:32:22', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2E54E1A5-04F8-4C33-A9D0-24A02E70F602', '2015-04-17 11:47:11', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('963A27A4-D3C5-4093-9EA5-241762FED311', '2015-04-17 12:53:50', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AE21C87B-A494-458C-9702-989A9241D73E', '2015-04-17 13:02:21', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('22395C05-4CCB-43BB-B6E2-EA503096D631', '2015-04-17 13:12:34', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8DEA59A2-5AEA-48C6-9C32-6C090018BEA1', '2015-04-17 13:17:11', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3517B8B3-8108-40CB-98C4-B2DE7E172A85', '2015-04-17 13:25:32', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CE7C5CDE-D233-4F82-AE32-4410B1C386E7', '2015-04-17 13:27:53', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('135D57B5-489E-48A8-9CDB-57C0697C3928', '2015-04-17 13:53:14', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('41E57800-2906-45E7-8DAF-BBB9648D1C3C', '2015-04-17 13:59:02', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FAA0F483-A0DF-4B1D-BBE6-1E94153A6159', '2015-04-17 14:08:18', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A0A50329-7A6D-491A-BD3F-EB18461922EF', '2015-04-17 14:11:45', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0A1095A5-4852-4F40-8CF8-8CE5D632EB1B', '2015-04-17 14:23:32', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('9B88022B-CA84-4BA6-8D5D-3A54B5C958C2', '2015-04-17 14:24:35', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EA3A9FD3-010E-45FF-8E0F-61561E892535', '2015-04-17 14:27:35', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('83CF7B93-D170-4A33-8F7E-16AE8579D8A2', '2015-04-17 14:41:09', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('088F950F-3932-4E45-B9E8-F1761FC1C61E', '2015-04-17 14:44:42', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C1BC85B0-625B-435D-8D2E-F4685FFF5AE8', '2015-04-17 14:46:52', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DCAB17FE-56C8-4BEF-9BE5-E768C12AE402', '2015-04-17 14:55:10', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('183215F2-729E-4749-B643-A0267C63BF1C', '2015-04-17 15:00:25', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1057ADE6-79DB-4FFB-A094-29B80BFC2D8E', '2015-04-17 15:12:06', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6138FD39-FCCE-4277-97AC-271681E18568', '2015-04-17 15:12:39', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A9AE6A4D-B7F7-40B2-8B05-2C84D3AB1230', '2015-04-17 15:12:47', '127.0.0.1', 'A0004', '赵光宇', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('024ABC9A-1D37-42FF-8180-FA3755E684C0', '2015-04-17 15:20:31', '127.0.0.1', 'A0004', '赵光宇', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1D94F563-183F-42C1-A471-20146DD42D4F', '2015-04-17 15:20:39', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CDC04D73-EBAA-4576-8317-EC7253A55129', '2015-04-17 15:37:16', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E330EDD4-30FB-42ED-89D4-A349EAFBB6D3', '2015-04-17 15:57:38', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D1CBD120-A516-4985-B697-7F3DE39AF0BD', '2015-04-17 16:45:55', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3B129FBB-DD60-4EC2-984C-03C1B829B208', '2015-04-20 08:54:29', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('54FD0F3E-2FB7-4014-9274-94EE01BB4248', '2015-04-20 08:55:08', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DE274947-0DF1-465F-B528-AC3ACE8717F8', '2015-04-20 08:55:16', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BC554FAD-E547-4A26-B6D1-7629ADABA7BC', '2015-04-20 10:07:51', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('227C07D4-C369-4946-963B-10B068055151', '2015-04-20 10:08:19', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7B7CA3EA-08DF-493A-A849-EFD7B2D60834', '2015-04-20 10:17:08', '127.0.0.1', 'A0002', '赵爽', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('932DC6F7-4C71-478E-A8B0-3A5EBEB54247', '2015-04-20 10:22:19', '127.0.0.1', 'A0002', '赵爽', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BF64DAD0-4F68-4F05-AFDA-1BD4FB1EAB69', '2015-04-20 10:22:29', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8D016CEA-0D28-4F90-B0C2-7AE9BFAA0DA0', '2015-04-20 10:32:40', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EF0E23BF-C5EC-4E83-A02B-E78E6D5AC4D0', '2015-04-20 10:34:05', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BCCCD38E-8543-4683-A409-6685E6A20514', '2015-04-20 10:35:04', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('FDF79DFF-5EA2-44F0-B4A0-690815C52310', '2015-04-20 10:35:12', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F65DD1DA-833B-4993-AFAC-4C6D80B36AB1', '2015-04-20 10:35:32', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0AF61AF7-AAFE-4FCD-9D11-052369DA666A', '2015-04-20 10:39:12', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('0BC03AEA-2023-4CEE-B076-CDBB0205CB1C', '2015-04-20 10:43:34', '127.0.0.1', 'CS03', '孙小三', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('D019F0DD-827E-45D7-B66D-67A5FDC67216', '2015-04-20 10:43:40', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1ACA2367-C150-4392-83ED-B0A09503AEFA', '2015-04-20 10:45:50', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('818DA0EF-9F2D-430F-B456-4C2D3FCF2813', '2015-04-20 10:45:58', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ACF9A8C4-B72A-4B37-B002-734208D57181', '2015-04-20 10:46:14', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('22237F66-1045-468E-8783-A478A9608965', '2015-04-20 10:46:21', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('03CB52AA-5BBA-44CD-92FB-E102747E48AD', '2015-04-20 10:47:26', '127.0.0.1', 'CS03', '孙小三', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('5D62BF44-DB0E-44BE-BEDD-C7A5A569138E', '2015-04-20 10:47:35', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E7A570E8-39E6-4236-9A51-A264174C59A4', '2015-04-20 10:49:45', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E4E79B64-F1A7-483D-B7E8-5BFFE192DABB', '2015-04-20 10:49:51', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CCA97AEC-CD78-4684-AF02-43F479344828', '2015-04-20 10:51:01', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('BD0D4023-6236-4065-94BB-81923C407A1C', '2015-04-20 10:51:10', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4BBD7EEE-7311-4D92-BD4B-C9783D28A783', '2015-04-20 10:51:35', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6749004E-82A7-4598-9EA1-70BD3E6F9702', '2015-04-20 10:51:41', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F65112DA-8FA8-4CBF-98DC-EFE9C5899EEB', '2015-04-20 10:58:25', '127.0.0.1', 'CS03', '孙小三', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C5ED7777-3CB0-4FCA-B8F2-855BC5E769EC', '2015-04-20 10:58:31', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2D5A5297-5DD5-4BBE-8CFA-C755507E6F20', '2015-04-20 11:02:16', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6ADF7AE2-1563-4942-A427-BA5C53380EF1', '2015-04-20 11:24:16', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E27E28A6-0A4A-4D70-9692-CEBEFBC42C61', '2015-04-20 11:27:39', '127.0.0.1', 'CS03', '孙小三', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EAA65CA6-AA3E-420C-97AF-2C598DB3C738', '2015-04-20 11:27:45', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('99047E43-A0AB-4163-8BF5-723F401DAFE1', '2015-04-20 11:30:42', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F9C0DFDA-17BD-441A-820E-CEEB499CD2C3', '2015-04-20 11:31:03', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('20E19E66-DC49-4DF2-AF0A-48988CCC913D', '2015-04-20 13:26:43', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FD0D446C-76EE-4617-A8E0-0A3B0B11C336', '2015-04-20 13:29:08', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A19814E3-E25D-4076-8751-5ABA12A0EA20', '2015-05-01 14:14:44', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B31DC0B0-280C-490A-BA0D-793B4B8E6FF4', '2015-04-20 14:37:55', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A5BCB4C1-9E99-4B55-A2CC-7C718A645271', '2015-04-20 14:39:37', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DD725BB1-1031-4934-A8C7-85A31EE8CB7D', '2015-04-20 14:44:30', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8BF59C57-D32B-481F-A535-05AC224F6743', '2015-04-20 14:51:36', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A64488B5-D43E-43F9-A9D1-698462211D15', '2015-04-20 14:55:14', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A7B8A677-AB45-47F0-98ED-AF430240605B', '2015-04-20 14:55:39', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A7B3964C-B3BF-4095-A96C-8811F16A4AB7', '2015-04-20 15:26:21', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('85E85D15-2497-4373-8F71-E140687988A5', '2015-04-20 15:29:13', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('74A53799-AEDE-4C38-9BF9-B4ADE88E6F4D', '2015-04-20 15:37:20', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A989F3D8-9849-4352-8449-8F417DC54F7A', '2015-04-20 15:39:49', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('BF32D90D-4612-48FE-8D20-49613FC64308', '2015-04-20 15:40:48', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('355A2BB7-345F-46BA-8E11-707EC747A9B0', '2015-04-20 15:44:57', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5F92EA3C-1FA5-4B99-BE31-7323FA220A87', '2015-04-20 16:07:43', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('627DB2B6-4FF1-4D0A-922E-FCD084665AF1', '2015-04-20 16:07:54', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FD3EA546-E105-45DD-8EB5-AFB3AF678F20', '2015-04-20 16:43:15', '127.0.0.1', 'CS03', '孙小三', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('EDCDDD2E-DB8F-4E97-BDE0-D6B55F58B765', '2015-04-20 16:43:30', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7E06E00B-CF0B-4855-8A8E-694F25F1BB1F', '2015-04-20 16:56:36', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7F60853B-47C7-4735-9890-3DB251311A52', '2015-04-20 16:57:07', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7B28E293-2A6A-4BCA-9929-6595E83F805D', '2015-04-20 17:05:24', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('ABA27644-CC20-4382-BFD9-344086C557E4', '2015-04-20 17:05:49', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('600B3F2E-D307-4ECC-A6C6-D1C5E368BC15', '2015-04-20 17:09:43', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B05E5D9A-019D-4A93-AD4F-EFA8157D5EB0', '2015-04-20 17:13:48', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A00AAD3F-CC26-42B5-9617-70A1909AFE8D', '2015-04-20 17:17:58', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2F9FBBBB-7311-4B83-9B08-1C70A15D1F9F', '2015-04-20 17:21:30', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B2DBC51F-373A-42E3-95F1-8BF703C60EF3', '2015-04-20 17:22:03', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('41BB4853-4E2F-4A64-9C55-0095AB5A34CC', '2015-04-20 17:25:02', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5A15EF26-9762-4EDA-BEDB-745D26D2FA34', '2015-04-20 20:26:18', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('27217582-A390-433C-8EDC-A36516579092', '2015-04-20 20:26:25', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CAEDC43D-643E-41C0-8700-3FB741C929A0', '2015-04-20 20:32:14', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('117BDB25-4BD3-41AE-B6F4-DA855B152067', '2015-04-20 20:32:26', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2DD32098-CD26-4BEC-9776-762E19FB886F', '2015-04-20 20:37:01', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3425CA9B-65D1-4CCA-A059-17F8FC7D5202', '2015-04-20 20:38:54', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('79AC77B2-BC50-4E4F-9EF5-E2C3318C8684', '2015-04-20 20:40:43', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2FFD6C0C-8542-4EEB-B33B-0A2788E22EA2', '2015-04-20 20:44:45', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2BFD3AB1-4C22-4133-9C51-764690D24192', '2015-04-20 20:45:50', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6D410762-FA70-48B4-B234-2D61334A8441', '2015-04-20 20:56:30', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('4FED78F8-04C9-4DFB-AF77-3ECC77AF3E41', '2015-04-20 20:58:48', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C00B69BB-D4F8-43A2-8086-748963B8A0A2', '2015-04-20 21:04:18', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('28995AD0-FA2E-4DA1-AD8F-13B5DABBD780', '2015-04-20 21:07:33', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2EF98529-E159-4302-8E60-AA2B2272BE5E', '2015-04-20 21:16:41', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('206510EC-39A4-4FED-8689-09C23A093E26', '2015-04-20 21:24:06', '127.0.0.1', 'CS03', '孙小三', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8777A5EE-CD49-4F92-A4AC-489A803DC31D', '2015-04-20 21:24:12', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('CB6E32DF-9EC5-4A60-BDB1-0F7EA2456AFC', '2015-04-20 21:24:54', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('00EA4D6A-04D6-4CE6-A305-3AC356336092', '2015-04-20 21:29:22', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8BEA2990-2C37-4F6B-86A3-5DEF40F38340', '2015-04-20 21:29:31', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2A8D14D1-8011-45EF-A654-2770021ED9C9', '2015-04-20 22:02:38', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5936C663-61FA-49A6-96FA-02CA13560868', '2015-04-21 08:36:36', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('77CBAC8E-0ACC-4FFE-B399-9E1303776E61', '2015-04-21 08:36:41', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('71472C9C-4497-4119-8553-9308FE3E135A', '2015-04-21 08:41:32', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C35B0033-4C62-4FD4-A607-111FB3DDAD6F', '2015-04-21 08:44:25', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E6076F36-0117-4B39-94BC-A5C9DF5E90DC', '2015-04-21 08:44:32', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7DFF65D1-3AD1-42D8-90A6-546670ACBF28', '2015-04-21 09:06:40', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F1800656-E6BF-49E4-8A21-65733B841145', '2015-04-21 09:07:16', '127.0.0.1', 'CS03', '孙小三', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E56F0DE1-5CCC-4BC8-8B83-3F3636DF6852', '2015-04-21 09:07:31', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('208FDFF6-F668-4879-8EBD-DD9FE006F57C', '2015-04-21 09:07:37', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1D745FCE-9C2B-406C-A7FC-2BAB2EF22294', '2015-04-21 09:29:49', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B28D5EBF-6FDA-469B-87F8-DE0276AFCF6B', '2015-04-21 09:30:48', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('44DBBF92-8151-4880-8507-7E6EAF829B7E', '2015-04-21 09:32:32', '127.0.0.1', 'CS01', '张老大', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B77A1B47-DE4F-4108-8C8B-DC32518C2A7C', '2015-04-21 09:34:59', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('DF8152F7-EF68-4243-954A-2D3B19490DB3', '2015-04-21 09:35:24', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('233A6B6C-635C-4773-80D0-AEFF08B3A55A', '2015-04-21 10:05:53', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('A7E1008D-8227-4EC6-B61D-5CF26414F35F', '2015-04-21 10:05:58', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E7B2DBC0-6294-474C-819F-5BED2A0E2EF3', '2015-04-21 10:45:38', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D7F5E6CD-300F-4730-9761-84DB422671A8', '2015-04-21 10:51:56', '127.0.0.1', 'CS04', '赵小四', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('102B5099-98D4-4F75-B94C-9512AF878F66', '2015-04-21 10:52:12', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A5DA34DD-C6E1-44A3-A32B-B84059FE5C97', '2015-04-21 10:54:14', '127.0.0.1', 'CS04', '赵小四', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('9F61127C-BCDF-4EDC-BE87-444EC4E5836F', '2015-04-21 10:54:22', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('3E68DD78-76FA-43BC-825F-D6E1147824AF', '2015-04-21 10:54:44', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E1791991-CE2F-445B-B2E3-F1E24561AC04', '2015-04-21 10:54:51', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F6C4A9D6-CEA7-4470-9E68-15E84A63527B', '2015-04-21 10:54:58', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('C4909492-77F9-4BD0-9990-0516FEC307C1', '2015-04-21 10:55:03', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D7CD1C68-2CC8-48E7-9C87-DB65C8F0D7D7', '2015-04-21 10:55:05', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('02B9CF73-8B61-4865-9659-D503003A1906', '2015-04-21 10:55:22', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1E3377DA-692F-4599-9512-BABCE0EC37DB', '2015-04-21 10:56:58', '127.0.0.1', 'CS04', '赵小四', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('063CBAB0-A14A-4474-9D2C-A5687F5838D6', '2015-04-21 10:57:09', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('85C5691B-1D28-4E2B-AA38-C954AD329729', '2015-04-21 10:57:35', '127.0.0.1', 'CS04', '赵小四', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('994F5E66-C0EF-41A7-8D94-36B58403DA3A', '2015-04-21 10:57:43', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('236BAB55-BC87-4C27-837D-5E6ADAC7A027', '2015-04-21 10:57:49', '127.0.0.1', 'CS04', '赵小四', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('71A0F20F-89EC-4DBC-AD7B-F843EA8208E9', '2015-04-21 10:57:57', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D81296EA-E848-4472-BEE3-8E9534E7F179', '2015-04-21 10:58:04', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4D891954-C0D2-47C4-82E4-E8CD814530AA', '2015-04-21 10:58:13', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C8FD628D-5BBE-4655-A946-B7F36EB2C0D3', '2015-04-21 10:59:17', '127.0.0.1', 'CS04', '赵小四', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('887EDB55-906E-4FDC-A615-4E50F678C595', '2015-04-21 10:59:25', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8DFD7B62-45AF-46EE-9CFF-456DBADDC9E7', '2015-04-21 11:05:21', '127.0.0.1', 'CS04', '赵小四', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('F748F033-8E66-4629-B6DB-05F04FE74CA9', '2015-04-21 11:05:27', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7D05097E-4357-40E1-AC17-6CA3BC628BA2', '2015-04-21 11:08:02', '127.0.0.1', 'CS04', '赵小四', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('3306877F-A397-4EEC-9C06-3168ECF8E5A8', '2015-04-21 11:08:10', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1ADE1FB6-4843-4675-BCF0-B3A38728F2D3', '2015-04-21 13:04:52', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('6C00EF79-1865-46E8-A33F-9DE2F3CCE505', '2015-04-21 15:58:55', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('EBB5670A-4A89-46C2-9A72-891162E20AA8', '2015-04-22 09:42:22', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('DB776297-7D2C-4B4F-AE09-E39D0E2CE7C4', '2015-04-22 09:47:44', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5E0BEB21-ADFD-42A4-812C-B90AC0A34D93', '2015-04-22 09:52:02', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('C1D5A2CE-591F-4977-8C7A-9BF7C0904C9F', '2015-04-22 09:54:53', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('19B06CAD-8610-43C6-850A-8F8BA154960A', '2015-04-22 09:57:40', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('58F59153-5204-4966-82A3-0EE587F7EB82', '2015-04-22 10:03:24', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8B7E281A-B06A-4A69-9767-F496DDA54B4C', '2015-04-22 10:06:16', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('60B360C5-4D6A-4CDE-9C26-25CDAF715D9D', '2015-04-22 10:06:53', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('75780BF9-ABD3-4C11-8493-2C63C29A9A4F', '2015-04-22 10:07:08', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('48192A69-B286-4B92-8626-89F01C60917B', '2015-04-22 10:07:28', '127.0.0.1', 'CS01', '张老大', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('A3DE9D67-8441-4283-B98E-E9C3774E4BE8', '2015-04-22 10:08:01', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('5D466F1A-C8CB-4F1C-94B9-C27FBEB8B155', '2015-04-22 10:08:30', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('1AA57649-54EC-48C4-B2C4-2B5EAD26500B', '2015-04-22 10:08:37', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('388733BD-1FE4-4F78-B960-F29965B0AAE5', '2015-04-22 10:09:32', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('032DFD6D-80AB-415E-A0EA-720CEF5E21B2', '2015-04-22 10:09:41', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('2F7509E5-0848-4DCA-9EF1-D696AEC41ABA', '2015-04-22 10:09:53', '127.0.0.1', 'CS01', '张老大', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('0B28D826-05F5-4381-B293-ED8D1CD89DBB', '2015-04-22 10:09:59', '127.0.0.1', 'CS03', '孙小三', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D988DB7D-8F04-4020-964B-9E7030208FE1', '2015-04-22 10:10:24', '127.0.0.1', 'CS03', '孙小三', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('E1AAD974-66B5-4A92-A5AC-9C770AC7B571', '2015-04-22 10:10:31', '127.0.0.1', 'CS04', '赵小四', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F3BFBADD-FDCB-49D8-A3AB-ACC3E9602C99', '2015-04-22 10:14:57', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('1239F966-BE85-48D8-8401-4ACA2BA5439E', '2015-04-22 11:38:04', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('AFBB2C1F-3E40-4419-9F07-78BB1DCD8BB6', '2015-04-22 13:59:40', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('E9CDAA86-5F1A-4FC6-8004-FA1CB5BB35D1', '2015-04-22 14:01:02', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('FA1F3BFE-8083-410A-98F1-15A82A74A639', '2015-04-22 14:03:36', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('766FD816-E018-4292-913F-6E7E6BD9E015', '2015-04-22 14:05:36', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('F3167BCF-2844-483B-B764-BF30602530B6', '2015-04-22 14:54:32', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('8A6A4A09-97D5-448E-8CAF-17261F178750', '2015-04-22 15:33:15', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('46E9A78C-221E-4E23-98C2-9A8AE7FAC2A0', '2015-04-22 15:34:47', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('6969D5EF-6887-43F7-96E5-31063D86FBB3', '2015-04-22 15:34:56', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('93F5D65A-CDFE-4E41-9872-752CF8BA4033', '2015-04-22 15:47:57', '127.0.0.1', 'admin', '管理员', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('4FAE1404-2506-44EC-A506-1F389B48E1A3', '2015-04-22 15:48:15', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('7F6F5D39-FF67-4732-82C9-AF58EDDBC63F', '2015-04-22 15:48:52', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('8EC13897-E708-409C-8820-5EC67510144C', '2015-04-22 16:04:36', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('D943F4B4-F350-4671-94CF-27C04C2966BF', '2015-04-22 16:37:46', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('B4E8BBEC-C696-45C1-A96A-B399BC9D2443', '2015-04-22 16:38:31', '127.0.0.1', 'CS02', '赵小二', '系统登陆', 'login');
INSERT INTO `sys_log` VALUES ('78FB6248-553B-4FE0-A433-10829283AA80', '2015-04-22 16:38:44', '127.0.0.1', 'CS02', '赵小二', '退出系统', 'logout');
INSERT INTO `sys_log` VALUES ('49C051A4-F66D-4A54-B72C-7529BB846DD4', '2015-04-22 16:38:52', '127.0.0.1', 'admin', '管理员', '系统登陆', 'login');

-- ----------------------------
-- Table structure for sys_onlinecount
-- ----------------------------
DROP TABLE IF EXISTS `sys_onlinecount`;
CREATE TABLE `sys_onlinecount` (
  `IPADDRRESS` varchar(64) NOT NULL,
  `ONLINECOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`IPADDRRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_onlinecount
-- ----------------------------

-- ----------------------------
-- Table structure for sys_operation
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation`;
CREATE TABLE `sys_operation` (
  `OPER_ID` char(36) NOT NULL,
  `HANLER_ID` varchar(36) DEFAULT NULL,
  `OPER_CODE` varchar(64) DEFAULT NULL,
  `OPER_NAME` varchar(64) DEFAULT NULL,
  `OPER_ACTIONTPYE` varchar(64) DEFAULT NULL,
  `OPER_SORT` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_operation
-- ----------------------------
INSERT INTO `sys_operation` VALUES ('04925782-D1DD-4799-874D-DA89C09C5E93', '4F7D78BE-CEF2-4B71-9F43-EEF3ABADC5A1', 'editImgBtn', '编辑', 'editImgBtn', '2');
INSERT INTO `sys_operation` VALUES ('3EC41FB8-ED98-41F3-B86D-F7473AEDD002', '494DF09B-7573-4CCA-85C1-97F4DC58C86B', 'viewDetail', '查看', 'viewDetail', '1');
INSERT INTO `sys_operation` VALUES ('4062C9FB-7556-461B-A252-C1FF17151BAC', '4F7D78BE-CEF2-4B71-9F43-EEF3ABADC5A1', 'copyImgBtn', '复制', 'copyImgBtn', '4');
INSERT INTO `sys_operation` VALUES ('42F79115-9E98-4F60-90FC-5468996C9496', '4F7D78BE-CEF2-4B71-9F43-EEF3ABADC5A1', 'detailImgBtn', '查看', 'detailImgBtn', '5');
INSERT INTO `sys_operation` VALUES ('6BF7A157-D333-4F40-8612-F61D3FD4D258', '494DF09B-7573-4CCA-85C1-97F4DC58C86B', 'refreshImgBtn', '刷新', 'refresh', '2');
INSERT INTO `sys_operation` VALUES ('B6F4ADFE-3BCC-4D84-B4CC-1A4991A0556B', '4F7D78BE-CEF2-4B71-9F43-EEF3ABADC5A1', 'delImgBtn', '删除', 'delImgBtn', '3');
INSERT INTO `sys_operation` VALUES ('D88643B1-1076-40D7-B7F1-CE3504E2AA85', '4F7D78BE-CEF2-4B71-9F43-EEF3ABADC5A1', 'createImgBtn', '新增', 'createImgBtn', '1');

-- ----------------------------
-- Table structure for wcm_general_group
-- ----------------------------
DROP TABLE IF EXISTS `wcm_general_group`;
CREATE TABLE `wcm_general_group` (
  `GRP_ID` varchar(36) NOT NULL,
  `GRP_NAME` varchar(64) DEFAULT NULL,
  `GRP_PID` varchar(36) DEFAULT NULL,
  `GRP_ORDERNO` int(11) DEFAULT NULL,
  `GRP_IS_SYSTEM` varchar(32) DEFAULT NULL,
  `GRP_RES_TYPE_DESC` varchar(32) DEFAULT NULL,
  `GRP_RES_TYPE_EXTS` varchar(128) DEFAULT NULL,
  `GRP_RES_SIZE_LIMIT` varchar(32) DEFAULT NULL,
  `GRP_DESC` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wcm_general_group
-- ----------------------------
INSERT INTO `wcm_general_group` VALUES ('77777777-7777-7777-7777-777777777777', '附件目录', '', null, '', '', '', '', '');
INSERT INTO `wcm_general_group` VALUES ('A6018D88-8345-46EE-A452-CE362FAC72E2', '视频文件', '77777777-7777-7777-7777-777777777777', '1', 'Y', '视频', '*.mp4;*.3gp;*.wmv;*.avi;*.rm;*.rmvb;*.flv', '100MB', '');
INSERT INTO `wcm_general_group` VALUES ('CF35D1E6-102E-428A-B39C-0072D491D5B1', '业务附件', '77777777-7777-7777-7777-777777777777', '2', 'Y', '所有资源', '*.*', '2MB', '');

-- ----------------------------
-- Table structure for wcm_general_resource
-- ----------------------------
DROP TABLE IF EXISTS `wcm_general_resource`;
CREATE TABLE `wcm_general_resource` (
  `RES_ID` varchar(36) NOT NULL,
  `GRP_ID` varchar(36) DEFAULT NULL,
  `RES_NAME` varchar(64) DEFAULT NULL,
  `RES_SHAREABLE` varchar(32) DEFAULT NULL,
  `RES_LOCATION` varchar(256) DEFAULT NULL,
  `RES_SIZE` varchar(64) DEFAULT NULL,
  `RES_SUFFIX` varchar(32) DEFAULT NULL,
  `RES_DESCRIPTION` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wcm_general_resource
-- ----------------------------
INSERT INTO `wcm_general_resource` VALUES ('66146C8F-EF05-4687-B724-569E82773413', 'CF35D1E6-102E-428A-B39C-0072D491D5B1', '新建文本文档.txt', 'Y', '/HotServer/reponsitory/resourse/CF35D1E6-102E-428A-B39C-0072D491D5B1/2015/04/21/新建文本文档.txt', '2522', '.txt', null);
