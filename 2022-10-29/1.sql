use StuDB
go

 --����һ
-- ��ӱ��ֶ�
alter table dbo.��ʦ��Ϣ add phone_number char(11);
-- ��ӱ��ֶβ�Ϊ�ֶ����Լ��
alter table dbo.��ʦ��Ϣ add annual_salary decimal(7,2) check (annual_salary<1000000.00);
-- �޸ı��ֶ�
alter table dbo.��ʦ��Ϣ alter column �Ա� bit;
-- Լ���ֶβ���Ϊ��
alter table dbo.��ʦ��Ϣ alter column ���� nchar(5) not null;
---- �����ֶ�Ϊ����
alter table dbo.�γ���Ϣ add constraint �γ̺� primary key(�γ̺�);��
alter table dbo.ѧ����Ϣ add  constraint ѧ�� primary key(ѧ��);
alter table dbo.ѧ���ɼ� add constraint ѧ�ſγ̺� primary key(ѧ��,�γ̺�);


alter table dbo.�γ���Ϣ add constraint �γ��� unique(�γ���);

 --�����ֶ����Ĭ��ֵ
--��ĳ���ֶ�����Լ��������Ĭ��ֵ��ʱ����Ҫ�Ƚ�ԭ�ȵ�Լ��ɾ����Ȼ�����½�Լ������Ĭ��ֵ�����򱨴�
alter table dbo.ѧ����Ϣ add constraint רҵ_ default '���繤��' for רҵ;
alter table dbo.ѧ����Ϣ add constraint ϵ��_ default '�Ŵ�ѧԺ' for ϵ��;
alter table dbo.�γ���Ϣ add constraint range check(����ѧ�� <=6 and ����ѧ�� >=0);
alter table dbo.ѧ���ɼ� add constraint FK_ѧ�� foreign key(ѧ��) references dbo.ѧ����Ϣ(ѧ��);
alter table dbo.ѧ���ɼ� add constraint FK_�γ̺� foreign key(�γ̺�) references dbo.�γ���Ϣ(�γ̺�);
go