-- 1.��ѯ������1201�����ѧ����Ϣ��������ѧ�š����������������Ա𡱺͡����䡱������������С�������С�
use StuDB;
select ѧ��,����,�Ա�,year(getdate())-YEAR(��������) as ���� 
into query_1
from dbo.ѧ����Ϣ order by ���� asc;
go
--�����ɵı���˳�������ǲ��ʱ����еĲ�����query_1���ڲ��������
--select * from query_1;

-- 2.��ѯ���ű����02��04��05�����н�ʦ�ġ��������������䡱�͡��¹��ʡ�������������С���󣬹����ɸߵ������С�
use StuDB;
select ����,
	year(getdate())-YEAR(��������) as ����,
	��ʦ��н/12.0 as �¹���
from dbo.��ʦ��Ϣ
order by ���� asc, �¹��� desc;
go

-- 3.��ѯ�γ̺�Ϊ '208' �ĳɼ�����ǰ3λѧ���ġ�ѧ�š��͡��ɼ���
use StuDB;
select top 3 ѧ��,�ɼ�,
	rank() over(order by �ɼ� desc) as ����
	from dbo.ѧ���ɼ�
	where �γ̺� = '208'
go

-- 4.��ѯȫУ�����м����˳ǵ�ѧ���ġ�ѧ�š������༶���͡�������
use StuDB
select ѧ��,�༶,����
	from dbo.ѧ����Ϣ
	where �Ա� = '��' and ���� like '%�˳�%';
go

-- 5.��ѯѧ����Ϣ����������Сѧ���ġ�ѧ�š������������͡��༶��
use StuDB
select ѧ��,����,�༶
	from dbo.ѧ����Ϣ
	where ��������=(select max(��������) from dbo.ѧ����Ϣ);
go

-- 6.���������ѧ���ġ��ܷ֡��͡�ƽ���֡�
use StuDB
select sum(�ɼ�) as '�ܷ�', AVG(�ɼ�) as 'ƽ����',ѧ��
	from dbo.ѧ���ɼ�
--	where ѧ��=13040104
	group by ѧ�� ;

--select * from dbo.ѧ���ɼ� where ѧ��=13040104;
go

-- 7.����ְ��Ϊ�����ڵġ���ʦ������
use StuDB
select count(ְ��) from dbo.��ʦ��Ϣ
	where ְ��='������';
go

-- 8.��ѯ��ʦû��email�ġ���ʦ������
use StuDB
-- select count(Email) from dbo.��ʦ��Ϣ;
-- select count(��ʦ���) from dbo.��ʦ��Ϣ;
select count(*)  from dbo.��ʦ��Ϣ where Email is null;
go

-- 9.��ʾѧ��Ϊ��12020109����ѧ�����п����еġ���߷֡�������ͷ֡�
use StuDB
select MAX(�ɼ�) as ��߷�,
		MIN(�ɼ�) as ��ͷ�
		from dbo.ѧ���ɼ�
		where ѧ�� = '12020109'
go

-- 10.ͳ�Ƴ���û�е�Email��Ҳû���ֻ��ŵ���ʦ
select * from dbo.��ʦ��Ϣ
	where Email is null and �ֻ����� is null;

-- 11.��ʾѧ���ɼ�ƽ���ִ���80�ֵĿγ̵ļ�¼��(��ʾ�У��γ̺ţ�ƽ����)
select �γ̺�,AVG(�ɼ�) as 'ƽ����'
	from dbo.ѧ���ɼ�
	group by �γ̺�;

--12.���ѯƽ���ɼ�����80�ֵ�����Щѧ����(��ʾ�У�ѧ�ţ�ƽ���ɼ�)
use StuDB
select ѧ��,AVG(�ɼ�) as 'ƽ���ɼ�'
	from dbo.ѧ���ɼ�
	group by ѧ��
	having AVG(�ɼ�) >80;
go

--13.��ѯÿλ��ʦ�ο��������磺��������ʦ����3�ſ�)
--(��ʾ�У���ʦ���ο���)
select ��ʦ,count(�γ̺�) as '�ο���'
	from dbo.�γ���Ϣ
	group by ��ʦ;

--14.��ѯ��Щ��ʦ�ο�������1�ţ� (��ʾ�У���ʦ���ο���)
select ��ʦ,count(�γ̺�) as �ο���
	from dbo.�γ���Ϣ
	group by ��ʦ
	having count(�γ̺�)>1;

--15.��ѯ��Щ���ŵĽ�ʦƽ���������30�ꣿ(��ʾ�У����ű�ţ�ƽ������)
select ���ű��,
	AVG(YEAR(getdate())-year(��������)) as 'ƽ������'
	from dbo.��ʦ��Ϣ
	group by ���ű��
	having AVG(YEAR(getdate())-year(��������))>30;

