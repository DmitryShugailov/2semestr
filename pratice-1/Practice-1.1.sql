— Запрос, который извлекает все электронные письма в штате флорида в алфавитном порядке

select * from emails e where customer_id in (
select customer_id from customers c where state = 'FL'
order by first_name
);
-- запрос, который извлекает все имена, фамилии и данные электронной почты для клиентов Zoom в Нью-Йорке в штате Нью-Йорк. Они должны располагаться в алфавитном порядке: фамилия следует за именем.
select first_name, last_name, email from customers c 
where city = 'New York City'
order by first_name ;
-- Напишите запрос, который возвращает всех клиентов с заказанным номером телефона на дату добавления клиента в базу данных.
select * from customers c where phone is not null and date_added is not null 
order by date_added; 