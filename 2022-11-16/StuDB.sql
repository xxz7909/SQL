CREATE DATABASE [StuDB]
 ON  PRIMARY 
( NAME = N'StuDB',
  FILENAME = N'D:\StuDB.mdf',
  SIZE = 3072KB,
  FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StuDB_log',
  FILENAME = N'D:\StuDB_log.ldf' ,
  SIZE = 1024KB ,
  FILEGROWTH = 10%)
GO

ALTER DATABASE [StuDB] SET RECOVERY FULL
GO

USE [StuDB]
GO

CREATE TABLE [dbo].[学生信息](
   [系部] [nvarchar](10) NULL,
   [班级] [nvarchar](10) NULL,
   [专业] [nvarchar](10) NULL,
   [学号] [char](8) NOT NULL,
   [姓名] [nvarchar](5) NULL,
   [性别] [char](2) NULL,
   [出生日期] [datetime] NULL,
   [籍贯] [nvarchar](10) NULL,
   [总学分] [tinyint] NULL,
   [备注] [nvarchar](50) NULL,
 CONSTRAINT [PK_学生信息] PRIMARY KEY CLUSTERED([学号] ASC))

CREATE TABLE [dbo].[教师信息](
   [教师编号] [char](5) NOT NULL,
   [姓名] [nchar](5) NOT NULL,
   [性别] [bit] NULL,
   [职称] [nchar](10) NULL,
   [出生日期] [smalldatetime] NULL,
   [部门编号] [char](2) NULL,
   [手机号码] [char](11) NULL,
   [Email] [varchar](50) NULL,
   [教师年薪] [decimal](8, 2) NULL,
 CONSTRAINT [PK_教师信息] PRIMARY KEY CLUSTERED([教师编号] ASC))

CREATE TABLE [dbo].[学生成绩](
   [学号] [char](8) NOT NULL,
   [课程号] [char](3) NOT NULL,
   [成绩] [tinyint] NULL,
 CONSTRAINT [PK_学生成绩] PRIMARY KEY CLUSTERED([学号] ASC,[课程号] ASC))

CREATE TABLE [dbo].[部门信息](
   [部门编号] [char](2) NOT NULL,
   [名称] [nchar](10) NULL,
   [职责范围] [nvarchar](50) NULL,
 CONSTRAINT [PK_部门信息] PRIMARY KEY CLUSTERED([部门编号] ASC))

CREATE TABLE [dbo].[课程信息](
   [课程号] [char](3) NOT NULL,
   [课程名] [nvarchar](20) NOT NULL,
   [教师] [nvarchar](5) NULL,
   [开课学期] [tinyint] NULL,
   [学时] [tinyint] NULL,
   [学分] [tinyint] NULL,
 CONSTRAINT [PK_课程信息] PRIMARY KEY CLUSTERED([课程号] ASC))

CREATE TABLE [dbo].[Users](
   [UserName] [nvarchar](10) NOT NULL,
   [Password] [nvarchar](10) NULL,
   [Grade] [nvarchar](10) NULL,
   [Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED([UserName] ASC))

GO

INSERT INTO [StuDB].[dbo].[部门信息]
   VALUES('01' , '电子信息' , '教学系部')

INSERT INTO [StuDB].[dbo].[部门信息]
   VALUES('02' , '计算机科学' , '教学系部')

INSERT INTO [StuDB].[dbo].[部门信息]
   VALUES('03' , '经济管理' , '教学系部')

INSERT INTO [StuDB].[dbo].[部门信息]
   VALUES('04' , '通信工程' , '教学系部')

INSERT INTO [StuDB].[dbo].[部门信息]
   VALUES('05' , '人事处' , '管理部门')

INSERT INTO [StuDB].[dbo].[部门信息]
   VALUES('06' , '办公室' , '管理部门')

GO

INSERT INTO [StuDB].[dbo].[Users]
   VALUES('admini' , '140902' , '系统管理员', NULL)

INSERT INTO [StuDB].[dbo].[Users]
   VALUES('Andy' , '130826' , '普通管理员', NULL)

INSERT INTO [StuDB].[dbo].[Users]
   VALUES('Serkida' , '140802' , '普通管理员', NULL)

GO

INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('01101', '王明松', '1', '教授', '1966-06-08', '01', '13834562145', 'shjk@yahoo.com', '123456.78')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('01102', '刘桂芳', '0', '副教授', '1986-08-02', '01', '13043251876', 'lgf023457@163.com', '82341.78')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('01103', '刘庆云', '0', '副教授', '1977-08-31', '01', NULL, '9396167823@qq.com', '55569.19')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('01201', '李华伟', '1', NULL, '1988-11-30', '01', NULL, '13945387@sina.com.cn', '112494.20')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('02101', '王志岩', '1', '教授', '1974-12-26', '02', '13120129346', '13120129346@qq.com', '129823.66')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('02103', '周密', '0', NULL, '1989-05-06', '02', '13293887755', NULL, '57196.88')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('02104', '周国军', '1', '副教授', '1993-11-10', '02', '15035166000', NULL, '166364.46')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('02106', '王明松', '1', '副教授', '1976-06-08', '02', '13834532415', NULL, '802437.35')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('02107', '周静娈', '0', '教授', '1965-02-27', '02', NULL, NULL, '98234.43')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('03102', '李四光', '1', NULL, '1987-10-12', '03', '18635116789', NULL, '152009.92')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('03104', '王建', '1', '副教授', '1966-11-08', '03', '15503515577', '15503515577@163.com', '175122.86')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('03108', '李春林', '1', NULL, '1987-01-23', '03', '13582661376', NULL, '36545.00')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('04101', '王涌', '0', '助教', '1999-10-26', '04', '13233622228', NULL, '197870.35')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('04104', '刘庆云', '1', '讲师', '1992-01-30', '04', '15235133999', 'lqysyxyuan@ycptu.edu.cn', '131223.60')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('05101', '黄绍红', '1', NULL, '1987-04-20', '05', '18535156888', NULL, '86164.93')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('05102', '唐红光', '0', '讲师', '1990-05-20', '05', NULL, NULL, '95437.95')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('05103', '黄寿孟', '1', '助教', '1997-02-02', '05', '15513620008', NULL, '91643.00')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('06101', '杨圣全', '1', NULL, '1987-04-24', '06', '18503513666', 'ysqzghljian@yahoo.com', '179010.81')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('06102', '唐慧君', '0', '助教', '1989-08-30', '06', '15513883355', NULL, '99612.10')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('06103', '杨圣全', '1', '讲师', '1995-10-31', '06', '15581822229', '15581822229@qq.com', '147126.18')
INSERT INTO [StuDB].[dbo].[教师信息]
   VALUES('06104', '周小军', '1', '讲师', '1982-11-15', '06', '13034784565', NULL, '0')


GO

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('101', '大学英语', '黄绍红', 1, 86, 5)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('102', '高等数学', '王明松', 1, 68, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('103', '计算机基础', '杨圣全', 1, 86, 5)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('104', '美工基础', '唐红光', 1, 80, 5)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('201', 'C语言程序设计', '唐慧君', 2, 64, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('202', 'Java语言程序', '王明松', 2, 68, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('203', 'PASCAL语言', '刘桂芳', 2, 56, 3)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('204', 'VC++', '王志岩', 2, 64, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('205', '专业英语', '周静娈', 3, 32, 2)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('206', '数据结构', '李春林', 3, 68, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('207', '网页设计', '王明松', 3, 64, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('208', '计算机组成', '周密', 3, 68, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('209', '离散数学', '李四光', 3, 64, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('301', '操作系统', '刘庆云', 4, 68, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('302', '计算机网络', '杨婉茜', 4, 64, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('303', '面向对象程序设计', '李春林', 4, 48, 3)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('304', '软件文档的编写', '黄寿孟', 4, 64, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('305', '数据处理', '王建', 4, 56, 3)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('306', '数据库原理', '周国军', 5, 68, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('307', '数据库应用技术', '李华伟', 5, 64, 4)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('308', '图像处理', '王涌', 5, 32, 2)

INSERT INTO [StuDB].[dbo].[课程信息]
   VALUES('309', '信息系统', '刘庆云', 5, 86, 5)

GO

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('11010105', '205', 86)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('11020207', '409', 88)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12010105', '208', 92)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12010105', '301', 98)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12010108', '302', 84)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12010108', '306', 48)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12010109', '102', 85)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12010109', '306', 92)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12010109', '309', 88)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020109', '102', 90)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020109', '309', 80)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020301', '208', 59)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020301', '301', 75)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020306', '201', 67)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020308', '101', 86)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020308', '103', 45)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020308', '206', 80)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12020308', '209', 65)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12040103', '208', 61)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12040103', '301', 53)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12040108', '101', 60)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12040108', '102', 90)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12040108', '103', 90)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('12040108', '202', 60)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020202', '201', 96)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020202', '308', 80)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020204', '206', 50)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020204', '208', 58)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020204', '209', 72)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020204', '301', 80)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020204', '302', 57)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020204', '306', 60)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13020306', '201', 58)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13030101', '206', 87)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13030101', '207', 78)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13030101', '307', 85)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13030103', '205', 90)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13030103', '307', 89)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13040101', '204', 88)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13040101', '206', 76)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13040104', '101', 67)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13040104', '102', 70)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13040104', '103', 85)

INSERT INTO [StuDB].[dbo].[学生成绩]
   VALUES('13040104', '202', 57)

GO

INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('电子信息', '电信1201', '电子信息', '12010101', '杨勇', '男', '1996-12-26', '山西阳泉市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('电子信息', '电信1201', '电子信息', '12010105', '叶小红', '女', '2002-04-27', '山西吕梁离石', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('电子信息', '电信1201', '电子信息', '12010108', '陈园', '女', '2001-01-22', '山西省忻州市原平', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('电子信息', '电信1202', '电子信息', '12010109', '李勇', '男', '1998-08-22', '大同市应县', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '计网1201', '计算机网络', '12020101', '孙政先', '男', '1990-05-15', '山西运城盐湖', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '计网1201', '计算机网络', '12020102', '王婷', '女', '1991-04-12', '山西长治市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '计网1201', '计算机网络', '12020105', '吕珊珊', '女', '1991-10-10', '山西省大同市二电厂', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '计网1201', '计算机网络', '12020108', '刘明明', '女', '1999-10-09', '山西临汾市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '计网1201', '计算机网络', '12020109', '刘晨雨', '女', '1999-07-10', '山西省晋城市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1201', '软件技术', '12020301', '李小波', '男', '2001-11-03', '运城市万荣', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1201', '软件技术', '12020302', '李勇', '男', '1998-04-12', '山西省大同市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1202', '软件技术', '12020306', '李敬', '女', '1990-01-05', '山西省太原小店', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1201', '软件技术', '12020308', '黄薇娜', '女', '2002-05-31', '太原市桃园南路', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('通信工程', '通信1201', '通信技术', '12040103', '任建刚', '男', '2000-10-02', '山西省晋中榆次市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('通信工程', '通信1201', '通信技术', '12040107', '张高立', '男', '1999-08-29', '山西运城夏县', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('通信工程', '通信1201', '通信技术', '12040108', '张红燕', '女', '2000-08-01', '长治市潞城', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('电子信息', '信管1302', '计算机信息管理', '13010205', '程鹏', '男', '1989-08-02', '太原市河西区', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('电子信息', '信管1301', '计算机信息管理', '13010206', '杨树华', '女', '1990-07-04', '山西省朔州市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('电子信息', '信管1301', '计算机信息管理', '13010207', '穆金华', '男', '1995-10-06', '山西省临汾浮山', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('电子信息', '信管1301', '计算机信息管理', '13010208', '王敏', '女', '2000-07-28', '山西晋城矿务局', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '计科1302', '计算机应用技术', '13020202', '赵成刚', '男', '1990-05-04', '山西省长治市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '计科1302', '计算机应用技术', '13020204', '沈昊', '男', '2000-12-28', '山西省晋城沁水', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1301', '软件技术', '13020303', '张欣欣', '女', '1990-04-11', '山西运城临猗', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1301', '软件技术', '13020304', '孟霞', '女', '1998-10-11', '山西省临汾市洪洞', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1301', '软件技术', '13020305', '李岩', '男', '1990-09-02', '山西运城市平陆', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1302', '软件技术', '13020306', '姜丽丽', '女', '1990-10-17', '运城市河津市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1302', '软件技术', '13020307', '吕文昆', '男', '1997-09-03', '山西省临汾尧庙', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1301', '软件技术', '13020308', '张峰', '男', '1990-09-02', '山西省吕梁市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1302', '软件技术', '13020309', '管西芬', '女', '1992-10-10', '吕梁离石市', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('计算机科学', '软件1301', '软件技术', '13020310', '周梅', '女', '1991-06-02', '山西省大同市左云', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('经济管理', '电商1301', '电子商务', '13030101', '郭洪亮', '男', '1990-04-11', '山西省忻州市五台', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('经济管理', '电商1301', '电子商务', '13030102', '张立', '男', '1999-10-11', '山西忻州定襄', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('经济管理', '电商1302', '电子商务', '13030103', '吴秋娟', '女', '1996-08-05', '临汾市襄汾县', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('经济管理', '电商1302', '电子商务', '13030104', '高全英', '女', '1991-07-04', '山西晋中清徐县', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('经济管理', '电商1302', '电子商务', '13030105', '郝莎', '女', '1989-08-02', '太原市古交区', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('经济管理', '电商1302', '电子商务', '13030106', '李晓燕', '女', '1990-09-05', '太原市迎泽大街', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('经济管理', '电商1301', '电子商务', '13030108', '刘晨', '女', '1999-11-15', '山西太原晋源区', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('通信工程', '通信1301', '通信技术', '13040101', '王庆红', '男', '2002-02-26', '山西省长治市黎城', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('通信工程', '通信1301', '通信技术', '13040102', '王立敏', '女', '2000-04-11', '山西省大同市新荣区', 1, NULL)
INSERT INTO [StuDB].[dbo].[学生信息]
   VALUES('通信工程', '通信1301', '通信技术', '13040104', '王玲玲', '女', '2000-06-07', '山西省太原市尖草坪', 1, NULL)

GO
