-- ����ʵ��
-- ʵ������һ

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

-- ѧϰͨ2
use XSCJ;
go
create table KCB (
	�γ̺� char(4) not null,
	�γ��� varchar(40),
	�ڿν�ʦ varchar(10),
	����ѧ�� tinyint ,
	ѧʱ tinyint
)

-- ѧϰͨ 3.
use XSCJ;
alter table dbo.KCB add constraint �γ̺� primary key(�γ̺�)
go

--4.
use XSCJ;
alter table dbo.KCB alter column �γ��� varchar(40) not null;
go

-- 5.
use XSCJ;
alter table dbo.KCB add constraint �γ��� unique(�γ���);
go

-- 6.
use XSCJ;
alter table dbo.KCB add constraint ����ѧ�� default 1 for ����ѧ��;
go