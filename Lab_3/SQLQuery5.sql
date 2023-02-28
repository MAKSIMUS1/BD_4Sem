use K_MyBase;

SELECT Фамилия_водителя, Стаж From ВОДИТЕЛИ;
SELECT count(*)['Кол-во строк в таблице'] From ВОДИТЕЛИ; 

SELECT * FROM ВОДИТЕЛИ;

UPDATE ВОДИТЕЛИ set Пол = 'ж';
UPDATE ВОДИТЕЛИ set Стаж = Стаж+1 Where Отчество = 'Иванович';

SELECT * FROM ВОДИТЕЛИ;