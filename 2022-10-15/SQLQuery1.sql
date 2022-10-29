use master
go

create table XSCJ.DBO.XSB (
	序号 int identity(1,1),
	学号 char(10) not null primary key,
	姓名 varchar(10) not null default 1,
	性别 bit  not null default 1,
	民族 char(10),
	出生日期 date not null,
	籍贯 char(20) ,
	所属院系 varchar(20) not null,
	专业名称 varchar(20) not null,
	总学分 tinyint,
	check(总学分>0 and 总学分<200),
	备注 varchar(50),
)


