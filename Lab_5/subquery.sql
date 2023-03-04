use UNIVER;

SELECT * FROM FACULTY;
SELECT * FROM PULPIT;
SELECT * FROM PROFESSION;

-------------1
SELECT * 
		FROM FACULTY, PULPIT
		Where FACULTY.FACULTY = PULPIT.FACULTY
		AND
		PULPIT.FACULTY IN(SELECT PROFESSION.FACULTY FROM PROFESSION
							WHERE (PROFESSION.PROFESSION_NAME LIKE '%���������[��]%'));


-------------2
SELECT * 
		FROM FACULTY INNER JOIN PULPIT
		ON FACULTY.FACULTY = PULPIT.FACULTY
		Where PULPIT.FACULTY IN(SELECT PROFESSION.FACULTY FROM PROFESSION
							WHERE (PROFESSION.PROFESSION_NAME LIKE '%���������[��]%'))
							
-------------3
SELECT * 
		FROM FACULTY INNER JOIN PULPIT
		ON FACULTY.FACULTY = PULPIT.FACULTY
		INNER JOIN PROFESSION
		ON PROFESSION.FACULTY = PULPIT.FACULTY
		WHERE (PROFESSION.PROFESSION_NAME LIKE '%���������[��]%')
				
-------------4

SELECT * FROm AUDITORIUM;

SELECT * FROM AUDITORIUM
			WHERE AUDITORIUM_CAPACITY = (SELECT TOP(1) AUD.AUDITORIUM_CAPACITY
			FROM AUDITORIUM AS AUD
			WHERE AUD.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE
			ORDER BY AUDITORIUM_CAPACITY DESC)
			ORDER BY AUDITORIUM_CAPACITY DESC;


-------------5
SELECT * FROM FACULTY;
SELECT * FROM PULPIT;

SELECT * 
		FROM FACULTY
		WHERE NOT EXISTS (SELECT * FROM PULPIT
							WHERE FACULTY.FACULTY = PULPIT.FACULTY);
-------------6
SELECT * FROM PROGRESS;

SELECT TOP 1
	(SELECT AVG(NOTE) FROM PROGRESS
			WHERE SUBJECT LIKE '%����%')[����],
	(SELECT AVG(NOTE) FROM PROGRESS
			WHERE SUBJECT LIKE '%��%')[��],
	(SELECT AVG(NOTE) FROM PROGRESS
			WHERE SUBJECT LIKE '%����%')[����]
			FROM PROGRESS;

-------------7
SELECT * FROM GROUPS;
SELECT YEAR_FIRST FROM GROUPS
								WHERE PROFESSION LIKE '1-4%';
SELECT * FROM GROUPS
		WHERE YEAR_FIRST >=ALL (SELECT YEAR_FIRST FROM GROUPS
								WHERE PROFESSION LIKE '1-4%');
								
SELECT * FROM GROUPS
		WHERE YEAR_FIRST >=ANY (SELECT YEAR_FIRST FROM GROUPS
								WHERE PROFESSION LIKE '1-4%');