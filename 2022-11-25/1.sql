--任务一：使用自连接或子查询技术查询下列信息
--1.
select * from dbo.学生信息 stu_info_1
    inner join dbo.学生信息  stu_info_2
    on stu_info_1.姓名=stu_info_2.姓名
     and stu_info_1.学号!=stu_info_2.学号;
    
--2.
