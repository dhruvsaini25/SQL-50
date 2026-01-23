1# Write your MySQL query statement below
2select sell_date,
3    count(distinct product) as num_sold,
4    group_concat(
5        distinct product 
6        order by product asc 
7        separator ','
8    ) as products
9from activities
10group by sell_date
11order by sell_date