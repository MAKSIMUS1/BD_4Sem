 use K_MyBase;

 DROP table МАРШРУТЫ;
 DROP table ВОДИТЕЛИ;
 DROP table ЗАКАЗЫ;

 CREATE table МАРШРУТЫ
 (
	Название_маршрута nvarchar(30) primary key,
	Дальность int not null,
	Количество_дней_в_пути smallint not null
 ) on FG1;
 CREATE table ВОДИТЕЛИ
 (
	Фамилия_водителя nvarchar(15) primary key,
	Имя nvarchar(15) not null,
	Отчество nvarchar(15) not null,
	Стаж tinyint not null
 ) on FG1;
 CREATE table ЗАКАЗЫ
 (
	Номер_заказа nvarchar(10) primary key,
	Дата_отправки date not null,
	Оплата nvarchar(20) not null, 
	Название_заказанного_маршрута nvarchar(30) not null foreign key references МАРШРУТЫ(Название_маршрута),
	Фамилия_водителя nvarchar(15) not null foreign key references ВОДИТЕЛИ(Фамилия_водителя)
 ) on FG1;

ALTER Table ВОДИТЕЛИ ADD Дата_рождения date; 
ALTER Table ВОДИТЕЛИ ADD Пол nchar(1) default 'м' check (Пол in ('м', 'ж')); 
ALTER Table ВОДИТЕЛИ DROP Column Дата_рождения;

 INSERT into ВОДИТЕЛИ Values
 ('Зайцев', 'Александр', 'Дмитриевич', 1, 'м'),
('Кокос', 'Алексей',	'Иванович',	3, 'м'),
('Макаревич',	'Иван',	'Иванович',	5, 'м')

 INSERT into ВОДИТЕЛИ 
 Values	('Соболев',	'Никита',	'Олегович',	2, DEFAULT)

INSERT into МАРШРУТЫ 
Values	('Брест-Берлин',	570,	4),
		('Гомель-Прага',	155,	2),
		('Минск-Брест',	300,	1),
		('Минск-Москва',	200,	2),
		('Москва-Вена',	480,	3),
		('Париж-Тула',	2100,	7)

INSERT into ЗАКАЗЫ (Номер_заказа, Дата_отправки, Оплата, Название_заказанного_маршрута, Фамилия_водителя)
Values	(1,	'2023-02-19',	500,	'Минск-Москва',	'Соболев'),
		(2,	'2023-01-04',	350,	'Брест-Берлин',	'Зайцев')

