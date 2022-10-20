USE master;
--go
--create database XSCJ
--on primary
--(name = XSCJ_1,filename = 'H:\SQL\SXCJ_1.mdf',size=50MB,filegrowth=20%),
--filegroup UI
--(name = XSCJ_2,filename = 'H:\SQL\SXCJ_1.ndf',size=20MB,filegrowth=64MB)
--log on
--(name = XSCJ_LOG,filename = 'H:\SQL\SXCJ_LOG.ldf',size=50MB,filegrowth=10%);

go
alter database XSCJK --一开始没改对，执行完一次之后有改的
	modify filegroup UI name = USER1;

--go
--alter database XSCJK
--	modify file (name = XSCJ_1,size=50MB);

--go
--alter database XSCJ
--	modify file (name=XSCJ_2,newname = DATA)

--go
--alter database XSCJ
--	modify name	 = XSCJK;