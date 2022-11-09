-- 1.建库  √
-- 2.改库  √
-- 3.建表 教师表 班级表 课程表  教师班级课程表 √
-- 4.改表

-- 1.建库 
create database CYKA
on primary
	(name=TD1,filename='C:\SQL\TD1.mdf',size=8MB,maxsize=300MB,filegrowth=10%),
filegroup U1
	(name=TD2,filename='C:\SQL\TD2.ndf',size=8MB)
log on
	(name=CYKA_log,filename='C:\SQL\logFile.ldf',size=8MB,maxsize=100MB)
go

-- 2.改库
alter database CYKA
modify file
( name = TD2,
size = 20MB,
maxsize = 50MB,
filegrowth  = 15%);
go

-- 3.建表 教师表 班级表 课程表  教师班级课程表 √
use CYKA
go

create table dbo.教师表 (
        教师编号 nchar(6) primary key,
        姓名    nchar(6) not null,
        专业    nchar(1),
        职称    nchar(10) check(职称='副教授' or 职称='教授' or 职称='讲师' or 职称='助教' ),
        部门    nchar(12)
);
go

create table dbo.班级表(
	班级代码 nchar(6) primary key,
	班级名称 nchar(20) not null,
	院系部门	nchar(8) default '信创学院'
); 
go

create table dbo.课程表 (
	课程代码 nchar(6) primary key,
	课程名称 nchar(20) not null unique,
	类型 nchar(8) check(类型 = '必修' or 类型 = '选修')
);
go

create table dbo.教师班级课程表 (
	教师编号 nchar(6)
		foreign key(教师编号) references dbo.教师表(教师编号),
	班级代码 nchar(6)
		foreign key(班级代码) references dbo.班级表(班级代码),
	课程代码 nchar(6)
		foreign key(课程代码) references dbo.课程表(课程代码),
);	
use CYKA
alter table dbo.教师班级课程表 add 挂科人数 int not null
	check(挂科人数>=1 and 挂科人数<=40);

use CYKA
alter table dbo.课程表
add constraint 学分_range check(学分>=1 and 学分<=6);
go


			