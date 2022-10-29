use master
go

create table XSCJ.DBO.CJB (
	学号  char(10) not null ,
	课程号	char(4) not null,
	成绩		tinyint,
	学分		tinyint ,
	foreign key (学号) references XSB(学号),
	foreign key (课程号) references KCB(课程号),
	primary key(学号,课程号),
	check(学分<=10)
)
go