1# Write your MySQL query statement below
2select p.product_name, sum(o.unit) as unit
3from Products p
4join Orders o on p.product_id=o.product_id
5where o.order_date between '2020-02-01' and '2020-02-29'
6group by p.product_name
7having sum(o.unit)>=100
8