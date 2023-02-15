-- 1.查询“计网1201”班的学生信息，包括“学号”、“姓名”、“性别”和“年龄”，并按年龄由小到大排列。
use StuDB;
select 学号,姓名,性别,year(getdate())-YEAR(出生日期) as 年龄 
into query_1
from dbo.学生信息 order by 年龄 asc;
go
--先生成的表，按顺序排列是查的时候进行的操作，query_1现在不是有序的
--select * from query_1;

-- 2.查询部门编号是02、04、05部门中教师的“姓名”，“年龄”和“月工资”，并按年龄由小到大，工资由高到低排列。
use StuDB;
select 姓名,
	year(getdate())-YEAR(出生日期) as 年龄,
	教师年薪/12.0 as 月工资
from dbo.教师信息
order by 年龄 asc, 月工资 desc;
go

-- 3.查询课程号为 '208' 的成绩排名前3位学生的“学号”和“成绩”
use StuDB;
select top 3 学号,成绩,
	rank() over(order by 成绩 desc) as 排名
	from dbo.学生成绩
	where 课程号 = '208'
go

-- 4.查询全校男生中家是运城的学生的“学号”，“班级”和“姓名”
use StuDB
select 学号,班级,姓名
	from dbo.学生信息
	where 性别 = '男' and 籍贯 like '%运城%';
go

-- 5.查询学生信息表中年龄最小学生的“学号”、“姓名”和“班级”
use StuDB
select 学号,姓名,班级
	from dbo.学生信息
	where 出生日期=(select max(出生日期) from dbo.学生信息);
go

-- 6.计算出所有学生的“总分”和“平均分”
use StuDB
select sum(成绩) as '总分', AVG(成绩) as '平均分',学号
	from dbo.学生成绩
--	where 学号=13040104
	group by 学号 ;

--select * from dbo.学生成绩 where 学号=13040104;
go

-- 7.计算职称为副教授的“教师人数”
use StuDB
select count(职称) from dbo.教师信息
	where 职称='副教授';
go

-- 8.查询教师没有email的“教师人数”
use StuDB
-- select count(Email) from dbo.教师信息;
-- select count(教师编号) from dbo.教师信息;
select count(*)  from dbo.教师信息 where Email is null;
go

-- 9.显示学号为“12020109”的学生所有考试中的“最高分”、“最低分”
use StuDB
select MAX(成绩) as 最高分,
		MIN(成绩) as 最低分
		from dbo.学生成绩
		where 学号 = '12020109'
go

-- 10.统计出既没有的Email，也没有手机号的老师
select * from dbo.教师信息
	where Email is null and 手机号码 is null;

-- 11.显示学生成绩平均分大于80分的课程的记录。(显示列：课程号，平均分)
select 课程号,AVG(成绩) as '平均分'
	from dbo.学生成绩
	group by 课程号
	having AVG(成绩) > 80;

--12.请查询平均成绩大于80分的有哪些学生？(显示列：学号，平均成绩)
use StuDB
select 学号,AVG(成绩) as '平均成绩'
	from dbo.学生成绩
	group by 学号
	having AVG(成绩) >80;
go

--13.查询每位教师任课数（例如：王明松老师上了3门课)
--(显示列：教师，任课数)
select 教师,count(课程号) as '任课数'
	from dbo.课程信息
	group by 教师;

--14.查询哪些教师任课数多于1门？ (显示列：教师，任课数)
select 教师,count(课程号) as 任课数
	from dbo.课程信息
	group by 教师
	having count(课程号)>1;

--15.查询哪些部门的教师平均年龄大于30岁？(显示列：部门编号，平均年龄)
select 部门编号,
	AVG(YEAR(getdate())-year(出生日期)) as '平均年龄'
	from dbo.教师信息
	group by 部门编号
	having AVG(YEAR(getdate())-year(出生日期))>30;

