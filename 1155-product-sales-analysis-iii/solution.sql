with min_year_sales as 
(select product_id, year first_year,
    quantity, price, dense_rank() over (partition by product_id order by year) r1
from sales)
select product_id, first_year,
    quantity, price from min_year_sales
    where r1=1

