-- 添加dbo下的userTest表的userName字段注释为"用户名"
-- execute sp_addextendedproperty 'MS_Description','用户名','user','dbo','table','userTest','column','userName';
create table Library.dbo.ReaderType( --读者类型表
	RTypeld	int primary key identity,
	Rtype	nvarchar(30) not null,
	Num		tinyint not null check(Num>=0),
)
go