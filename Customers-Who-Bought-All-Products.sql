1# Write your MySQL query statement below
2select c.customer_id
3from Customer c
4group by customer_id
5having count(distinct product_key)= (select count(product_key) from product)