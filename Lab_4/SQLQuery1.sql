USE K_MyBase;

----1
SELECT *
		FROM �������� INNER JOIN ������ 
		ON ��������.�������_�������� = ������.�������_��������
		And ������.�������_�������� Like '%����%';

----3
SELECT ��������.�������_��������, ������.�����_������,
		CASE
			when (��������.����������_����_�_���� = 2) then '���'
			when (��������.����������_����_�_���� = 4) then '������'
		END [���� � ����]
		FROM �������� INNER JOIN ������
		ON ��������.�������_�������� = ������.�������_��������
		INNER JOIN �������� ON ��������.��������_�������� = ������.��������_�����������_��������
		WHERE ��������.����������_����_�_���� between 1 and 7
		ORDER BY ������.������;
----4

SELECT ISNULL (������.��������_�����������_��������, '***')[���������� �������],
		��������.�������_��������
		FROM �������� LEFT OUTER JOIN ������ 
		ON ��������.�������_�������� = ������.�������_��������;

----5

SELECT * FROM 
		�������� FULL OUTER JOIN ������ 
		ON ��������.�������_�������� = ������.�������_��������;
SELECT COUNT(*) FROM 
		�������� FULL OUTER JOIN ������ 
		ON ��������.�������_�������� = ������.�������_��������
		WHERE ������.�����_������ is NOT NULL;
SELECT COUNT(*) FROM 
		�������� FULL OUTER JOIN ������ 
		ON ��������.�������_�������� = ������.�������_��������
		WHERE ������.�����_������ is NULL;

----6
SELECT *
		FROM �������� CROSS JOIN ������ 
		WHERE ��������.�������_�������� = ������.�������_��������;