use StuDB
go

-- 任务一
---- 添加表字段
--alter table dbo.教师信息 add phone_number char(11);
---- 添加表字段并为字段添加约束
--alter table dbo.教师信息 add annual_salary decimal(7,2) check (annual_salary<1000000.00);
---- 修改表字段
--alter table dbo.教师信息 alter column 性别 bit;
---- 约束字段不得为空
--alter table dbo.教师信息 alter column 姓名 nchar(5) not null;
------ 设置字段为主键
--alter table dbo.课程信息 add constraint 课程号 primary key(课程号);、
--alter table dbo.学生信息 add  constraint 学号 primary key(学号);
--alter table dbo.学生成绩 add constraint 学号课程号 primary key(学号,课程号);


--alter table dbo.课程信息 add constraint 课程名 unique(课程名);

-- 该做任务一7.  了

-- 任务二


go