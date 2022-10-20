use Library
go

-- H:\SQL\2022-10-17
-- �������ݿ�
create database Library
on primary
(name = Library,filename='H:\SQL\2022-10-17\Library.mdf')
log on
(name=Library_log,filename='H:\SQL\2022-10-17\Library.ldf');
go

-- ���dbo�µ�userTest���userName�ֶ�ע��Ϊ"�û���"
-- execute sp_addextendedproperty 'MS_Description','�û���','user','dbo','table','userTest','column','userName';

create table Library.dbo.ReaderType( --�������ͱ�
	RTypeld	int primary key identity,
	Rtype	nvarchar(30) not null,
	Num		tinyint not null check(Num>=0),
)
go



create table Library.dbo.Readers( --������Ϣ��
	RID		int				primary key identity,
	RName	nvarchar(50)	not null,
	Rgender	char(2)			not null check(Rgender='��' or Rgender='Ů') default '��',
	Rtypeld	int				not null foreign key references ReaderType(Rtypeld),
	RAddress nvarchar(50)	default '����',
	Email	nvarchar(50)	check(email like '%@%')
)
go

--ͻȻ�����ֶ������ô���
execute sp_rename 'ReaderType.RTypeld','RTypeId','column';
execute sp_rename 'Readers.Rtypeld','RTypeId','column';
go

create table Library.dbo.Publishers(
	PID int primary key identity,
	PName nvarchar(50) not null
)

create table BookCategory(
	categoryid int primary key identity,
	Name nvarchar(20) not null
)


create table Library.dbo.Books(
	BID int primary key identity,
	Title nvarchar(200) not null,
	Author nvarchar(50) not null,
	PubId int not null foreign key references Publishers(PID),
	PubDate datetime not null check(PubDate<getdate()),
	ISBN nvarchar(200) not null unique,
	Price money not null check(Price>0),
	Categoryid int not null references BookCategory(categoryid)
)

create table Borrow(
	RID int ,
	BID int ,
	foreign key (RID) references Readers(RID),
	foreign key (BID) references Books(BID),
	primary key (RID,BID),
	LendDate datetime not null default getdate(),
	ReturnDate datetime default null
)

create table Penalty(
	RID int,
	BID int,
	foreign key (RID) references Readers(RID),
	foreign key (BID) references Books(BID),
	PDate datetime not null default getdate(),
	PType int not null check(1='����' and 2='��' and 3='��ʧ' and PType>=1 and PType <=3),
	Amount money not null check(Amount >0)
)

exec sp_addextendedproperty N'��ע1',N'���߱��',N'user',N'dbo',N'table',N'Readers',N'column', N'RID';
exec sp_addextendedproperty N'��ע1',N'��������',N'user',N'dbo',N'table',N'Readers',N'column', N'RName';
exec sp_addextendedproperty N'��ע1',N'�����Ա�.',N'user',N'dbo',N'table',N'Readers',N'column', N'Rgender';
exec sp_addextendedproperty N'��ע1',N'�������ͱ��',N'user',N'dbo',N'table',N'Readers',N'column', N'RtypeId';
exec sp_addextendedproperty N'��ע1',N'��ͥ��ַ',N'user',N'dbo',N'table',N'Readers',N'column', N'RAddress';
exec sp_addextendedproperty N'��ע1',N'�������ͱ��',N'user',N'dbo',N'table',N'ReaderType',N'column', N'RTypeId';
exec sp_addextendedproperty N'��ע1',N'������������',N'user',N'dbo',N'table',N'ReaderType',N'column', N'Rtype';
exec sp_addextendedproperty N'��ע1',N'ͼ����',N'user',N'dbo',N'table',N'Books',N'column', N'BID';
exec sp_addextendedproperty N'��ע1',N'ͼ������',N'user',N'dbo',N'table',N'Books',N'column', N'Title';
exec sp_addextendedproperty N'��ע1',N'ͼ������',N'user',N'dbo',N'table',N'Books',N'column', N'Author';
exec sp_addextendedproperty N'��ע1',N'��������',N'user',N'dbo',N'table',N'Books',N'column', N'PubId';
exec sp_addextendedproperty N'��ע1',N'����ʱ��',N'user',N'dbo',N'table',N'Books',N'column', N'PubDate ';
exec sp_addextendedproperty N'��ע1',N'ISBN',N'user',N'dbo',N'table',N'Books',N'column', N'ISBN';
exec sp_addextendedproperty N'��ע1',N'����',N'user',N'dbo',N'table',N'Books',N'column', N'Price';
exec sp_addextendedproperty N'��ע1',N'ͼ��������',N'user',N'dbo',N'table',N'BookCategory',N'column', N'categoryid';
exec sp_addextendedproperty N'��ע1',N'��������',N'user',N'dbo',N'table',N'Publishers',N'column', N'PID';
exec sp_addextendedproperty N'��ע1',N'���߱��',N'user',N'dbo',N'table',N'Borrow',N'column', N'RID';
exec sp_addextendedproperty N'��ע1',N'ͼ����',N'user',N'dbo',N'table',N'Borrow',N'column', N'BID';
exec sp_addextendedproperty N'��ע1',N'��������',N'user',N'dbo',N'table',N'Borrow',N'column', N'LendDate';
exec sp_addextendedproperty N'��ע1',N'���߱��',N'user',N'dbo',N'table',N'Penalty',N'column', N'RID';
exec sp_addextendedproperty N'��ע1',N'ͼ����',N'user',N'dbo',N'table',N'Penalty',N'column', N'BID';
exec sp_addextendedproperty N'��ע1',N'��������',N'user',N'dbo',N'table',N'Penalty',N'column', N'PDate';
exec sp_addextendedproperty N'��ע1',N'��������',N'user',N'dbo',N'table',N'Penalty',N'column', N'PType';
