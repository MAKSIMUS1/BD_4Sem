select * from ЗАКАЗЫ where Дата_поставки > '10.10.2014';
select * from ТОВАРЫ where Цена between 5 AND 100;
select Заказчик from ЗАКАЗЫ where Наименование_товара = 'Стол';
select * from ЗАКАЗЫ where Заказчик = 'Zte' order by Дата_поставки;
