use StuDB
go
-- 任务3  作业里没有任务2 
--drop table 部门信息;
--go

-- 任务4 插入数据

--insert into dbo.学生信息(系部,班级,专业,学号,姓名,性别,出生日期,籍贯,总学分,备注)
--	values('通信工程','通信1301','通信技术','13040104','王玲玲','女','1996/6/8','山西省太原市','12',null);
--go

insert into dbo.学生信息(系部,班级,专业,学号,姓名,性别,出生日期,籍贯,总学分,备注)
	values('电子信息','电信1201','电子信息','12010101','杨勇','男','1996/12/26','山西省阳泉市','12',null);
go

insert into dbo.学生信息(系部,班级,专业,学号,姓名,性别,出生日期,籍贯,总学分,备注)
	values('通信工程','通信1301','通信技术','13040101','王庆红','男','1998/2/27','山西省长治市','10',null);
go

insert into dbo.学生信息(系部,班级,专业,学号,姓名,性别,出生日期,籍贯,总学分,备注)
	values('电子信息','电信1201','电子信息','12010108','陈园','女','1997/1/23','山西省忻州市',11,null);
go

insert into dbo.学生信息(系部,班级,专业,学号,姓名,性别,出生日期,籍贯,总学分,备注)
	values('计算机科学','软件1201','软件技术','12020308','黄薇娜','女','1998/6/1','山西省太原市','12',null);
go

-- 2.
insert into dbo.课程信息(课程号,课程名,教师,开课学期,学时,学分)
		values('101','大学英语','黄绍红','1','86','5');
go

insert into dbo.课程信息(课程号,课程名,教师,开课学期,学时,学分)
		values('102','高等数学','王明松','1','68','4');
go

insert into dbo.课程信息(课程号,课程名,教师,开课学期,学时,学分)
		values('103','计算机基础','杨圣全','1','86','5');
go

insert into dbo.课程信息(课程号,课程名,教师,开课学期,学时,学分)
		values('104','美工基础','唐红光','1','80','5');
go

insert into dbo.课程信息(课程号,课程名,教师,开课学期,学时,学分)
		values('201','C语言程序设计','唐慧君','2','64','4');
go

-- 3.
insert into dbo.学生成绩(学号,课程号,成绩)
		values('13040104','103','85');
go

insert into dbo.学生成绩(学号,课程号,成绩)
		values('13040104','101','67');
go

insert into dbo.学生成绩(学号,课程号,成绩)
		values('13040104','102','70');
go

insert into dbo.学生成绩(学号,课程号,成绩) --老师给的作业文件里，这一条课程号打错字了，对不上，改了
		values('13040104','201','57');
go

insert into dbo.学生成绩(学号,课程号,成绩) -- 注释同上，学号错了一个字
		values('12010108','103','90');
go