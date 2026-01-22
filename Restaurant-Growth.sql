1# Write your MySQL query statement below
2select visited_on, 
3( 
4    select sum(amount) 
5    from customer 
6    where visited_on between date_sub(c.visited_on, interval 6 day) and c.visited_on
7) as amount,
8round((
9    select sum(amount)/7
10    from customer
11    where visited_on between date_sub(c.visited_on, interval 6 day) and c.visited_on
12),2)as average_amount
13from customer c
14where visited_on >= (select date_add(min(visited_on), interval 6 day) from customer)
15group by visited_on
16order by visited_on