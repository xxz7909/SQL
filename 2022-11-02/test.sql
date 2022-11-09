-- 1.����  ��
-- 2.�Ŀ�  ��
-- 3.���� ��ʦ�� �༶�� �γ̱�  ��ʦ�༶�γ̱� ��
-- 4.�ı�

-- 1.���� 
create database CYKA
on primary
	(name=TD1,filename='C:\SQL\TD1.mdf',size=8MB,maxsize=300MB,filegrowth=10%),
filegroup U1
	(name=TD2,filename='C:\SQL\TD2.ndf',size=8MB)
log on
	(name=CYKA_log,filename='C:\SQL\logFile.ldf',size=8MB,maxsize=100MB)
go

-- 2.�Ŀ�
alter database CYKA
modify file
( name = TD2,
size = 20MB,
maxsize = 50MB,
filegrowth  = 15%);
go

-- 3.���� ��ʦ�� �༶�� �γ̱�  ��ʦ�༶�γ̱� ��
use CYKA
go

create table dbo.��ʦ�� (
        ��ʦ��� nchar(6) primary key,
        ����    nchar(6) not null,
        רҵ    nchar(1),
        ְ��    nchar(10) check(ְ��='������' or ְ��='����' or ְ��='��ʦ' or ְ��='����' ),
        ����    nchar(12)
);
go

create table dbo.�༶��(
	�༶���� nchar(6) primary key,
	�༶���� nchar(20) not null,
	Ժϵ����	nchar(8) default '�Ŵ�ѧԺ'
); 
go

create table dbo.�γ̱� (
	�γ̴��� nchar(6) primary key,
	�γ����� nchar(20) not null unique,
	���� nchar(8) check(���� = '����' or ���� = 'ѡ��')
);
go

create table dbo.��ʦ�༶�γ̱� (
	��ʦ��� nchar(6)
		foreign key(��ʦ���) references dbo.��ʦ��(��ʦ���),
	�༶���� nchar(6)
		foreign key(�༶����) references dbo.�༶��(�༶����),
	�γ̴��� nchar(6)
		foreign key(�γ̴���) references dbo.�γ̱�(�γ̴���),
);	
use CYKA
alter table dbo.��ʦ�༶�γ̱� add �ҿ����� int not null
	check(�ҿ�����>=1 and �ҿ�����<=40);

use CYKA
alter table dbo.�γ̱�
add constraint ѧ��_range check(ѧ��>=1 and ѧ��<=6);
go


			