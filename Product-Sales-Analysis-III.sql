1# Write your MySQL query statement below
2select product_id, year as first_year, quantity, price
3from Sales
4where (product_id, year) in (select product_id, min(year) from sales group by product_id)