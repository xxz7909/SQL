use master
go

create database Library
	on (filename = 'H:\SQL\2022-10-17\library.mdf'),
	   (filename = 'H:\SQL\2022-10-17\library_log.LDF')
	   for attach;
go
--�ҵ�xxx.MDF��xxx_log.LDF�ļ����Ҽ�-����-��ȫ-������û��������Authenticated Users-���ĸ���Ȩ��Ϊ��ȫȨ�ޣ��ٴθ��ӳɹ��� 
--��Ϣ 1813������ 16��״̬ 2���� 4 ��
--�޷��������ݿ� 'Library'��CREATE DATABASE ��ֹ��
--��Ϣ 950������ 20��״̬ 1���� 4 ��
--�޷��������ݿ� 'Library'����Ϊ�˰汾�� SQL Server ��֧�ָ����ݿ�ķǷ����汾(539)�����ܴ���˰汾�� sqlservr.exe �����ݵ����ݿ⡣�������´��������ݿ⡣

--���ʱ��: 2022-10-17T12:19:12.1882932+08:00



