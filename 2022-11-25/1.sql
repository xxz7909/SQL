--任务一：使用自连接或子查询技术查询下列信息
--1.
select * from dbo.学生信息 stu_info_1
    inner join dbo.学生信息  stu_info_2
    on stu_info_1.姓名=stu_info_2.姓名
     and stu_info_1.学号!=stu_info_2.学号;
    
--2.
select * from dbo.教师信息
    where 教师信息.出生日期
    > (select 出生日期 from dbo.教师信息 where 姓名='李华伟')

--3.
select 学号,课程号,成绩 from dbo.学生成绩
    WHERE 成绩 <
        (select AVG(成绩) from dbo.学生成绩
            where 课程号=208)

--4.
select 学号,课程号,成绩 from dbo.学生成绩
    WHERE 成绩 >
        (select MAX(成绩) from dbo.学生成绩
            where 课程号=209)
        and 课程号=102;

--5.
select 班级,学号,姓名,出生日期 from dbo.学生信息
    where 出生日期 > (select MAX(出生日期) from dbo.学生信息
                        where 性别='男') 

--6.
SELECT * from dbo.学生信息
    where 学号 in (
        select 学号 from dbo.学生成绩 where 成绩 is not null
    );

--7.
SELECT 学号,score.课程号,成绩 from dbo.学生成绩 score
    INNER JOIN (
        select AVG(成绩) as average,课程号 from dbo.学生成绩
        group by 课程号 
    ) avg_score
    on score.成绩>avg_score.average
        and score.课程号=avg_score.课程号;

-- 8.
select * from dbo.学生信息 as stu_info
    where not exists (
        select  学号 from dbo.学生成绩 as stu_scores
        where stu_info.学号 = stu_scores.学号
    ); --加not 查出来24 不加not查出来16 也就是说sql执行完 学生成绩里出来两个学号不在学生信息里
-- 奇怪 学生信息40人 学生成绩18人 结果查出来24个人没考
select distinct 学号 from dbo.学生成绩-- 但是这些人确实也没有考试成绩啊
    where 学号 not in (
        select 学号 from dbo.学生信息 as stu_info
        where not exists (
        select distinct 学号 from dbo.学生成绩 as stu_scores
        where stu_info.学号 = stu_scores.学号
         )
    )

select count(学号) from dbo.学生信息 
--select 学号 from dbo.学生信息
   
select count(distinct 学号) from dbo.学生成绩 
select distinct 学号 from dbo.学生成绩

-- 任务二 使用UNION进行联合查询
-- 2.题跟数据不匹配,做出来就是这样子的
select * from dbo.学生信息 as stu_info where 班级='11010111'
union 
select * from dbo.学生信息 as stu_info where 班级='11010112'
UNION
select * from dbo.学生信息 as stu_info where 班级='11020111'

-- 3.
select 学号,姓名,'学生' as 备注 from dbo.学生信息
    WHERE 姓名 like '陈%'
UNION
select 教师编号,姓名,'教师' as 备注 from dbo.教师信息
    WHERE 姓名 like '陈%'
