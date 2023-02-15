use StuDB
go

 --任务一
-- 添加表字段
alter table dbo.教师信息 add phone_number char(11);
-- 添加表字段并为字段添加约束
alter table dbo.教师信息 add annual_salary decimal(7,2) check (annual_salary<1000000.00);
-- 修改表字段
alter table dbo.教师信息 alter column 性别 bit;
-- 约束字段不得为空
alter table dbo.教师信息 alter column 姓名 nchar(5) not null;
---- 设置字段为主键
alter table dbo.课程信息 add constraint 课程号 primary key(课程号);、
 table dbo.学生信息 add  constraint 学号 primary key(学号);
alter table dbo.学生成绩 add constraint 学号课程号 primary key(学号,课程号);


alter table dbo.课程信息 add constraint 课程名 unique(课程名);

 --给表字段添加默认值
--给某个字段设置约束并设置默认值的时候，需要先将原先的约束删除，然后再新建约束设置默认值，否则报错。
alter table dbo.学生信息 add constraint 专业_ default '计算机科学与技术' for 专业;
alter table dbo.学生信息 add constraint 系部_ default '计算机学院' for 系部;
alter table dbo.课程信息 add constraint range check(开课学期 <=6 and 开课学期 >=0);
alter table dbo.学生成绩 add constraint FK_学号 foreign key(学号) references dbo.学生信息(学号);
alter table dbo.学生成绩 add constraint FK_课程号 foreign key(课程号) references dbo.课程信息(课程号);
go