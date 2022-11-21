-- 任务一 使用IN子查询进行复杂查询--但是昨晚发现与in无关 主要是select
-- 1.
select 班级,学号,姓名 from dbo.学生信息
    where 班级 
    = (select 班级 from dbo.学生信息
        where 学号='12020301' )

-- 2.
select 教师编号,姓名,职称 from dbo.教师信息
    where 职称
    = (select 职称 from dbo.教师信息
            where 教师编号=02101)

-- 3.
select 班级,学号,姓名 from dbo.学生信息
    WHERE 学号 in 
    (select 学号 from dbo.学生成绩 
        where 成绩 < 70 and 课程号 in
            (select 课程号 from dbo.课程信息
                WHERE 学分=5 ))

-- 4.
SELECT 系部,班级,学号,姓名 from dbo.学生信息
    WHERE 系部=(select 部门信息.名称 from dbo.部门信息
                    where 部门编号=(select 部门编号 from dbo.教师信息
                                    where 姓名='王志岩'))

-- 二、使用EXISTS子查询进行复杂查询
-- 1.
SELECT 学号,姓名 FROM dbo.学生信息
    WHERE exists(select 课程号 from dbo.学生成绩
                where 课程号=103 )

-- 2.
SELECT 学号,姓名 from dbo.学生信息
    where exists (select 学号 from dbo.学生成绩
                where 课程号=(select 课程号 from dbo.课程信息
                                where 课程名='计算机基础'))