-- 任务五  修改表中数据
-- 4.
update dbo.学生信息 set 出生日期 = '19970326' where 姓名 = '杨勇';
go

update dbo.学生信息 set 备注 = '班长' where 姓名 = '陈圆';
go

-- 5.
update dbo.课程信息 set 课程名 = 'C语言程序设计' where 课程名='程序设计基础';

-- 6.
update dbo.课程信息 set 学分 = 5 where 学分 = 3;

-- 任务6 -- 7.
-- 删除表中数据
-- 按照行号删除数据 -- 🤣算了算了，都没行号
delete from dbo.学生成绩 where 成绩 =67 or 成绩 = 57;

