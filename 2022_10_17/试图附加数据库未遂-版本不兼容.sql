use master
go

create database Library
	on (filename = 'H:\SQL\2022-10-17\library.mdf'),
	   (filename = 'H:\SQL\2022-10-17\library_log.LDF')
	   for attach;
go
--找到xxx.MDF与xxx_log.LDF文件，右键-属性-安全-在组或用户名处添加Authenticated Users-更改该组权限为完全权限，再次附加成功。 
--消息 1813，级别 16，状态 2，第 4 行
--无法打开新数据库 'Library'。CREATE DATABASE 中止。
--消息 950，级别 20，状态 1，第 4 行
--无法升级数据库 'Library'，因为此版本的 SQL Server 不支持该数据库的非发布版本(539)。不能打开与此版本的 sqlservr.exe 不兼容的数据库。必须重新创建该数据库。

--完成时间: 2022-10-17T12:19:12.1882932+08:00



