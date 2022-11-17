 --H:\SQL\2022-10-17
 --创建数据库
create database Library
on primary
(name = Library,filename='H:\SQL\2022-10-17\Library.mdf')
log on
(name=Library_log,filename='H:\SQL\2022-10-17\Library.ldf');
go