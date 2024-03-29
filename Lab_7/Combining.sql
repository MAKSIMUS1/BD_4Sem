use UNIVER

---------1
SELECT GROUPS.PROFESSION, FACULTY.FACULTY, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM FACULTY
		INNER JOIN GROUPS
		ON FACULTY.FACULTY = GROUPS.FACULTY
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		GROUP BY FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT WITH ROLLUP;
		

---------2
SELECT GROUPS.PROFESSION, FACULTY.FACULTY, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM FACULTY
		INNER JOIN GROUPS
		ON FACULTY.FACULTY = GROUPS.FACULTY
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		GROUP BY FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT WITH CUBE;

		
---------3
SELECT GROUPS.PROFESSION, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM GROUPS
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		WHERE PROGRESS.SUBJECT = '��'
		GROUP BY GROUPS.PROFESSION, PROGRESS.SUBJECT
		UNION 
SELECT GROUPS.PROFESSION, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM GROUPS
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		WHERE PROGRESS.SUBJECT = '��'
		GROUP BY GROUPS.PROFESSION, PROGRESS.SUBJECT;

		
SELECT GROUPS.PROFESSION, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM GROUPS
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		WHERE PROGRESS.SUBJECT = '��'
		GROUP BY GROUPS.PROFESSION, PROGRESS.SUBJECT
		UNION ALL
SELECT GROUPS.PROFESSION, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM GROUPS
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		WHERE PROGRESS.SUBJECT = '��'
		GROUP BY GROUPS.PROFESSION, PROGRESS.SUBJECT;


---------4	
SELECT GROUPS.PROFESSION, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM GROUPS
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		WHERE PROGRESS.SUBJECT = '��'
		GROUP BY GROUPS.PROFESSION, PROGRESS.SUBJECT
		INTERSECT
SELECT GROUPS.PROFESSION, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM GROUPS
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		WHERE PROGRESS.SUBJECT = '����'
		GROUP BY GROUPS.PROFESSION, PROGRESS.SUBJECT;
		
--------5
SELECT GROUPS.PROFESSION, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM GROUPS
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		WHERE PROGRESS.SUBJECT = '��'
		GROUP BY GROUPS.PROFESSION, PROGRESS.SUBJECT
		EXCEPT
SELECT GROUPS.PROFESSION, PROGRESS.SUBJECT, 
		ROUND(AVG(CAST(PROGRESS.NOTE AS float(4))), 2) [������� ��������������� ������] 
		FROM GROUPS
		INNER JOIN STUDENT
		ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN PROGRESS
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		WHERE PROGRESS.SUBJECT = '����'
		GROUP BY GROUPS.PROFESSION, PROGRESS.SUBJECT;

