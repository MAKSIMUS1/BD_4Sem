 use K_MyBase;

 DROP table ��������;
 DROP table ��������;
 DROP table ������;

 CREATE table ��������
 (
	��������_�������� nvarchar(30) primary key,
	��������� int not null,
	����������_����_�_���� smallint not null
 ) on FG1;
 CREATE table ��������
 (
	�������_�������� nvarchar(15) primary key,
	��� nvarchar(15) not null,
	�������� nvarchar(15) not null,
	���� tinyint not null
 ) on FG1;
 CREATE table ������
 (
	�����_������ nvarchar(10) primary key,
	����_�������� date not null,
	������ nvarchar(20) not null, 
	��������_�����������_�������� nvarchar(30) not null foreign key references ��������(��������_��������),
	�������_�������� nvarchar(15) not null foreign key references ��������(�������_��������)
 ) on FG1;

ALTER Table �������� ADD ����_�������� date; 
ALTER Table �������� ADD ��� nchar(1) default '�' check (��� in ('�', '�')); 
ALTER Table �������� DROP Column ����_��������;

 INSERT into �������� Values
 ('������', '���������', '����������', 1, '�'),
('�����', '�������',	'��������',	3, '�'),
('���������',	'����',	'��������',	5, '�')

 INSERT into �������� 
 Values	('�������',	'������',	'��������',	2, DEFAULT)

INSERT into �������� 
Values	('�����-������',	570,	4),
		('������-�����',	155,	2),
		('�����-�����',	300,	1),
		('�����-������',	200,	2),
		('������-����',	480,	3),
		('�����-����',	2100,	7)

INSERT into ������ (�����_������, ����_��������, ������, ��������_�����������_��������, �������_��������)
Values	(1,	'2023-02-19',	500,	'�����-������',	'�������'),
		(2,	'2023-01-04',	350,	'�����-������',	'������')

