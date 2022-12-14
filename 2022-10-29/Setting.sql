CREATE DATABASE [StuDB]
 ON  PRIMARY 
( NAME = N'StuDB',
  FILENAME = N'D:\SQLDB\StuDB.mdf',
  SIZE = 3 MB,
  FILEGROWTH = 1 MB )
 LOG ON 
( NAME = N'StuDB_log',
  FILENAME = N'D:\SQLDB\StuDB_log.ldf' ,
  SIZE = 1 MB ,
  FILEGROWTH = 10%)
GO

ALTER DATABASE [StuDB] SET RECOVERY FULL
GO

USE [StuDB]
GO

CREATE TABLE [dbo].[教师信息](
	[教师编号] [char](5) NOT NULL,
	[姓名] [nchar](5) NULL,
	[性别] [char](2) NULL,
	[出生日期] [smalldatetime] NULL,
	[部门编号] [char](2) NULL,
 CONSTRAINT [PK_教师信息] PRIMARY KEY CLUSTERED([教师编号] ASC))

CREATE TABLE [dbo].[部门信息](
	[部门编号] [char](2) NOT NULL,
	[名称] [nchar](10) NULL,
	[职责范围] [nvarchar](50) NULL,
 CONSTRAINT [PK_部门信息] PRIMARY KEY CLUSTERED([部门编号] ASC))

GO

CREATE TABLE [dbo].[学生信息]
(
	系部  nvarchar(10) null,
	班级  nvarchar(10) null,
	专业  nvarchar(10) null,
	学号  char(8) not null,
	姓名  nvarchar(5) null,
	性别  char(2) null,
	出生日期  datetime null,
	籍贯  nvarchar(10) null,
	总学分  tinyint  null,
	备注  text  null
)

CREATE TABLE [dbo].[课程信息]
(
	课程号 char(3) not null,
	课程名  nvarchar(20) not null,
	教师  nvarchar(5) null,
	开课学期  tinyint  null,
	学时  tinyint null,
	学分  tinyint null
)

CREATE TABLE [dbo].[学生成绩]
(
	学号  char(8) not null,
	课程号 char(3) not null,
	成绩  tinyint  null
)



