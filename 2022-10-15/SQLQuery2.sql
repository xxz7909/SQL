use master
go

create table XSCJ.DBO.KCB (
	�γ̺� char(4) not null primary key,
	�γ��� varchar(40) not null,
	�ڿν�ʦ	varchar(10) ,
	����ѧ�� tinyint not null default 1,
	ѧʱ tinyint	not null,
	ѧ�� tinyint,
	check(����ѧ��>=1 and ����ѧ��<=6)
)
go