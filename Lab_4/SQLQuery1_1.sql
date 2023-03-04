USE UNIVER;
----1
SELECT AUDITORIUM_TYPE.AUDITORIUM_TYPENAME, AUDITORIUM.AUDITORIUM 
		FROM AUDITORIUM INNER JOIN AUDITORIUM_TYPE 
		ON AUDITORIUM_TYPE.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE;
----2
SELECT AUDITORIUM_TYPE.AUDITORIUM_TYPENAME, AUDITORIUM.AUDITORIUM 
		FROM AUDITORIUM INNER JOIN AUDITORIUM_TYPE 
		ON AUDITORIUM_TYPE.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE 
		And AUDITORIUM_TYPE.AUDITORIUM_TYPENAME Like '%���������%';
----3
SELECT FACULTY.FACULTY as ��������, PULPIT.PULPIT as �������, 
		GROUPS.PROFESSION as �������������, SUBJECT.SUBJECT as ����������, 
		STUDENT.NAME as [��� ��������],
		CASE
			when (PROGRESS.NOTE = 6) then '�����'
			when (PROGRESS.NOTE = 7) then '����'
			when (PROGRESS.NOTE = 8) then '������'
		END [������]
		FROM PROGRESS INNER JOIN STUDENT 
		ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
		INNER JOIN GROUPS ON GROUPS.IDGROUP = STUDENT.IDGROUP
		INNER JOIN SUBJECT ON SUBJECT.SUBJECT = PROGRESS.SUBJECT
		INNER JOIN PULPIT ON PULPIT.PULPIT = SUBJECT.PULPIT
		INNER JOIN FACULTY ON FACULTY.FACULTY = PULPIT.FACULTY
		WHERE PROGRESS.NOTE between 6 and 8
		ORDER BY PROGRESS.NOTE;
----4
SELECT * FROm PULPIT;
SELECT * FROm TEACHER;

SELECT ISNULL (TEACHER.TEACHER, '***')[�������������],
		PULPIT.PULPIT [�������]
		FROM 
		PULPIT LEFT OUTER JOIN TEACHER ON TEACHER.PULPIT = PULPIT.PULPIT; 
----5
SELECT PULPIT.FACULTY, PULPIT.PULPIT, PULPIT.PULPIT_NAME FROM 
		PULPIT FULL OUTER JOIN TEACHER ON TEACHER.PULPIT = PULPIT.PULPIT; 
SELECT TEACHER.GENDER, TEACHER.PULPIT, TEACHER.TEACHER, TEACHER.TEACHER_NAME FROM 
		PULPIT FULL OUTER JOIN TEACHER ON TEACHER.PULPIT = PULPIT.PULPIT; 
SELECT * FROM 
		PULPIT FULL OUTER JOIN TEACHER ON TEACHER.PULPIT = PULPIT.PULPIT; 
SELECT COUNT(*) FROM 
		PULPIT FULL OUTER JOIN TEACHER ON TEACHER.PULPIT = PULPIT.PULPIT
		WHERE TEACHER.TEACHER is NULL; 
SELECT COUNT(*) FROM 
		PULPIT FULL OUTER JOIN TEACHER ON TEACHER.PULPIT = PULPIT.PULPIT
		WHERE TEACHER.TEACHER is NOT NULL;

----6
SELECT AUDITORIUM_TYPE.AUDITORIUM_TYPENAME, AUDITORIUM.AUDITORIUM 
			FROM AUDITORIUM CROSS JOIN AUDITORIUM_TYPE
			WHERE AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE;