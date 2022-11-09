use StuDB
go
-- 任务一 查询指定列或者所有列信息
-- 1.查询“学生信息”表中所有学生的学号、姓名和籍贯,请将查询结果保存在query1中
select 学号,姓名,籍贯 into query_1 from dbo.学生信息;

-- 2.查询“教师信息”表中所有教师的全部信息
select * from dbo.教师信息;

-- 任务2 输出列使用别名和计算项
-- 3.查询“Users”表中的UserName、Password和Grade列，并用汉字的用户名、密码和等级显示列名。
select UserName as 用户名,Password as 密码,Grade as 等级
from dbo.Users;
-- 4.查询“教师信息”表中的教师编号、姓名、年龄（年龄计算可使用year()函数）。
select 教师编号,姓名,year(getdate())-year(教师信息.出生日期) as 年龄
from 教师信息;
-- select DATENAME(YYYY,GETDATE());
-- select year(getdate());

-- 任务3 条件查询
-- 5.查询“学生信息”表中年龄大于20岁的所有学生的信息。
select * from dbo.学生信息 where year(GETDATE())-year(学生信息.出生日期) > 20;

-- 6.查询“学生信息”表中临汾市的学生全部信息
select * from dbo.学生信息 where 学生信息.籍贯 like '%临汾%';

-- 7.	查询“学生信息”表中年龄大于20岁并且籍贯是临汾的学生全部信息。
select * from dbo.学生信息 where
 学生信息.籍贯 like '%临汾%' and
 year(getdate())-year(学生信息.出生日期) > 20;

-- 8.查询“学生成绩”表中不及格学生的学号、课程号和成绩。
use StuDB;
select * from dbo.学生成绩 where 成绩 < 60;

-- 9.查询“学生成绩”表中成绩在55 ~ 59分的学生的学号、课程号和成绩。
use StuDB;
select 学号,课程号,成绩 from dbo.学生成绩 
where 成绩 >= 55 and 成绩 <=59;

-- 10.检索“课程信息”表中开课学期在2、4、5的课程所有信息。
use StuDB;
select * from dbo.课程信息
where 开课学期=2 or 开课学期=4 or 开课学期=5;

-- 11.列出“教师信息”表中没有手机的教师编号和姓名
use StuDB;
select 教师编号,姓名 from dbo.教师信息
where 手机号码 is null;
