-- 课外实践
-- 实践任务一

-- 1.
-- name filename size maxsize filegrowth
use master;
go
create database [XSCJ]
on primary
( name = "XSCJ_1",
  filename = 'D:\SQL\XSCJ_1.mdf',
  size = 50MB,
  filegrowth = 20%
  ),
FILEGROUP U1
(
	name = 'XSCJ_2',
	filename = 'D:\SQL\XSCJ_2.ndf',
	size = 20MB,
	maxsize = 500MB,
	filegrowth = 64MB
)
log on
(
	name = 'XSCJ_LOG',
	filename = 'D:\SQL\XSCJ_LOG.ldf',
	size = 50MB,
	filegrowth = 10%
);
go

-- 2. alter
----alter database [XSCJ] 
--	modify filegroup U1 name = USER1;

-- 学习通2
use XSCJ;
go
create table KCB (
	课程号 char(4) not null,
	课程名 varchar(40),
	授课教师 varchar(10),
	开课学期 tinyint ,
	学时 tinyint
)

-- 学习通 3.
use XSCJ;
alter table dbo.KCB add constraint 课程号 primary key(课程号)
go

--4.
use XSCJ;
alter table dbo.KCB alter column 课程名 varchar(40) not null;
go

-- 5.
use XSCJ;
alter table dbo.KCB add constraint 课程名 unique(课程名);
go

-- 6.
use XSCJ;
alter table dbo.KCB add constraint 开课学期 default 1 for 开课学期;
go