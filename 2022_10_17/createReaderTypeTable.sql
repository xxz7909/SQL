-- ���dbo�µ�userTest���userName�ֶ�ע��Ϊ"�û���"
-- execute sp_addextendedproperty 'MS_Description','�û���','user','dbo','table','userTest','column','userName';
create table Library.dbo.ReaderType( --�������ͱ�
	RTypeld	int primary key identity,
	Rtype	nvarchar(30) not null,
	Num		tinyint not null check(Num>=0),
)
go