-- Создайте новую таблицу с именем customers_nyc, которая извлечет все строки из таблицы клиентов, в которой клиент проживает в городе Нью-Йорк в штате Нью-Йорк
SELECT *
INTO customers_nyc
FROM customers c
WHERE c.state ='NY'
   
select * from customers_nyc

-- Удаление id 10014
DELETE FROM customers_nyc WHERE postal_code = '10014';

--  Добавьте новый текстовый столбец с именем событие
ALTER TABLE customers_nyc
ADD event_name VARCHAR(20) NULL;
--Установите значение события на вечеринку благодарности.
UPDATE customers_nyc
SET "event_name" = 'thank you party'
