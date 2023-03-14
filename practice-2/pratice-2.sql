--Подсчитайте общее количество единиц товара, проданных компанией

select count(product_id)
from sales s

--Подсчитайте общую сумму продаж в долларах для каждого штата
select state, sum(sales_amount) as sales_$
from sales s
join dealerships d on s.dealership_id = d.dealership_id
group by d.state
order by sales_$ desc

--Определить пять лучших диллерских центров по количеству проданных единиц (не учитывая интернет продажи)
select s.dealership_id , count(product_id) as sale_ed, s.channel
from sales s
where channel !='internet'
group by s.dealership_id, s.channel
order by sale_ed desc
limit 5

--Рассчитайте среднюю сумму продаж для каждого канала,
--как показано в таблице sales, и посмотрите на среднюю сумму продаж сначала по продажам channel,
--затем по product_id, а затем по обоим вместе.

select channel , product_id , round(avg(sales_amount)) as avg_sales
from sales s
where channel !='internet'
group by channel, product_id
order by avg_sales desc