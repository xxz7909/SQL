use StuDB
go

-- ����һ
---- ��ӱ��ֶ�
--alter table dbo.��ʦ��Ϣ add phone_number char(11);
---- ��ӱ��ֶβ�Ϊ�ֶ����Լ��
--alter table dbo.��ʦ��Ϣ add annual_salary decimal(7,2) check (annual_salary<1000000.00);
---- �޸ı��ֶ�
--alter table dbo.��ʦ��Ϣ alter column �Ա� bit;
---- Լ���ֶβ���Ϊ��
--alter table dbo.��ʦ��Ϣ alter column ���� nchar(5) not null;
------ �����ֶ�Ϊ����
--alter table dbo.�γ���Ϣ add constraint �γ̺� primary key(�γ̺�);��
--alter table dbo.ѧ����Ϣ add  constraint ѧ�� primary key(ѧ��);
--alter table dbo.ѧ���ɼ� add constraint ѧ�ſγ̺� primary key(ѧ��,�γ̺�);


--alter table dbo.�γ���Ϣ add constraint �γ��� unique(�γ���);

-- ��������һ7.  ��

-- �����


go