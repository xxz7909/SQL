use StuDB
go
-- ����һ ��ѯָ���л�����������Ϣ
-- 1.��ѯ��ѧ����Ϣ����������ѧ����ѧ�š������ͼ���,�뽫��ѯ���������query1��
select ѧ��,����,���� into query_1 from dbo.ѧ����Ϣ;

-- 2.��ѯ����ʦ��Ϣ���������н�ʦ��ȫ����Ϣ
select * from dbo.��ʦ��Ϣ;

-- ����2 �����ʹ�ñ����ͼ�����
-- 3.��ѯ��Users�����е�UserName��Password��Grade�У����ú��ֵ��û���������͵ȼ���ʾ������
select UserName as �û���,Password as ����,Grade as �ȼ�
from dbo.Users;
-- 4.��ѯ����ʦ��Ϣ�����еĽ�ʦ��š����������䣨��������ʹ��year()��������
select ��ʦ���,����,year(getdate())-year(��ʦ��Ϣ.��������) as ����
from ��ʦ��Ϣ;
-- select DATENAME(YYYY,GETDATE());
-- select year(getdate());

-- ����3 ������ѯ
-- 5.��ѯ��ѧ����Ϣ�������������20�������ѧ������Ϣ��
select * from dbo.ѧ����Ϣ where year(GETDATE())-year(ѧ����Ϣ.��������) > 20;

-- 6.��ѯ��ѧ����Ϣ�������ٷ��е�ѧ��ȫ����Ϣ
select * from dbo.ѧ����Ϣ where ѧ����Ϣ.���� like '%�ٷ�%';

-- 7.	��ѯ��ѧ����Ϣ�������������20�겢�Ҽ������ٷڵ�ѧ��ȫ����Ϣ��
select * from dbo.ѧ����Ϣ where
 ѧ����Ϣ.���� like '%�ٷ�%' and
 year(getdate())-year(ѧ����Ϣ.��������) > 20;

-- 8.��ѯ��ѧ���ɼ������в�����ѧ����ѧ�š��γ̺źͳɼ���
use StuDB;
select * from dbo.ѧ���ɼ� where �ɼ� < 60;

-- 9.��ѯ��ѧ���ɼ������гɼ���55 ~ 59�ֵ�ѧ����ѧ�š��γ̺źͳɼ���
use StuDB;
select ѧ��,�γ̺�,�ɼ� from dbo.ѧ���ɼ� 
where �ɼ� >= 55 and �ɼ� <=59;

-- 10.�������γ���Ϣ�����п���ѧ����2��4��5�Ŀγ�������Ϣ��
use StuDB;
select * from dbo.�γ���Ϣ
where ����ѧ��=2 or ����ѧ��=4 or ����ѧ��=5;

-- 11.�г�����ʦ��Ϣ������û���ֻ��Ľ�ʦ��ź�����
use StuDB;
select ��ʦ���,���� from dbo.��ʦ��Ϣ
where �ֻ����� is null;
