1# Write your MySQL query statement below
2select product_id, new_price as price
3from Products
4where (product_id, change_date) IN
5    (
6        select product_id, max(change_date)
7        from Products
8        where change_date <= '2019-08-16'
9        group by product_id
10    )
11union
12select product_id, 10 as price
13from Products
14where (product_id) not IN
15    (
16        select product_id
17        from Products
18        where change_date <= '2019-08-16'
19        group by product_id
20    )