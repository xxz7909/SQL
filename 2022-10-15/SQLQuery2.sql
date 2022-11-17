use master
go

create table XSCJ.DBO.KCB (
	课程号 char(4) not null primary key,
	课程名 varchar(40) not null,
	授课教师	varchar(10) ,
	开设学期 tinyint not null default 1,
	学时 tinyint	not null,
	学分 tinyint,
	check(开设学期>=1 and 开设学期<=6)
)
go