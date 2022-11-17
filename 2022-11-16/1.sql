use StuDB;
go

-- 1.
select 教师信息.姓名 , 部门信息.名称 as 部门名称
    from 教师信息 inner join 部门信息
    on 教师信息.部门编号= 部门信息.部门编号

-- 2.
select 学生信息.学号,姓名,课程号,成绩 from dbo.学生信息
    inner join dbo.学生成绩
    on 学生信息.学号=学生成绩.学号
    where 成绩 < 60;

-- 3.
select 学生成绩.学号,学生信息.姓名,课程信息.课程名,学生成绩.成绩
    from 学生成绩 
    inner join 课程信息
    on 学生成绩.课程号=课程信息.课程号
    inner join 学生信息
    on 学生成绩.学号 = 学生信息.学号
    where 成绩<60;

-- 4.
select  学生信息.班级,学生信息.性别,AVG(学生成绩.成绩) as 平均成绩
    from 学生成绩
    INNER join 学生信息 on 学生信息.学号=学生成绩.学号
    group by 班级,性别
    having 班级='计网1201';

 select  班级,性别,AVG(成绩) as 平均成绩
    from 学生成绩
    RIGHT join 学生信息 on 学生信息.学号=学生成绩.学号
    where 班级='计网1201'
    group by 性别,班级
    -- having 班级='计网1201';
    
-- select 班级,性别,成绩 from 学生信息
--     left join 学生成绩
--     on 学生信息.学号 = 学生成绩.学号
--     where 班级 = '计网1201'

-- 5.
select 学生成绩.学号,学生信息.姓名,课程信息.课程名,学生成绩.成绩
    from 学生成绩
    inner join 学生信息 on 学生信息.学号=学生成绩.学号
    inner join 课程信息 on 课程信息.课程号=学生成绩.课程号
    where 姓名 = '刘晨雨'

-- 6.
select COUNT(教师编号) as 教师人数 from dbo.教师信息 
    inner join dbo.部门信息 on 教师信息.部门编号=部门信息.部门编号
    WHERE 部门信息.名称='计算机科学';

-- 7.
select 课程信息.课程名,MAX(学生成绩.成绩) AS 最高分,
    MIN(学生成绩.成绩) AS 最低分
    from dbo.学生成绩
    INNER join 课程信息 on 课程信息.课程号=学生成绩.课程号
    GROUP BY 课程信息.课程名
    having 课程信息.课程名='操作系统';

-- 8.
select 学生信息.姓名,学生成绩.学号,学生成绩.课程号,学生成绩.成绩
    from dbo.学生成绩
    right join 学生信息 on 学生成绩.学号=学生信息.学号
-- 取右边表的全部,左边的按条件显示

-- 9.
SELECT 课程信息.课程名,学生成绩.学号,学生成绩.成绩
    from 学生成绩 RIGHT  JOIN 课程信息
    on 学生成绩.课程号=课程信息.课程号

-- 10.
SELECT 课程信息.课程名,教师信息.姓名
    from 课程信息 full join 教师信息
    on 课程信息.教师=教师信息.姓名
    where 课程信息.教师 is NULL
        or 教师信息.姓名 is NULL;

