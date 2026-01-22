1# Write your MySQL query statement below
2(select u.name as results
3from users u
4left join movierating mr on u.user_id=mr.user_id
5group by u.user_id
6order by count(mr.user_id) desc, u.name limit 1)
7union all
8(select m.title as results
9from movies m
10left join movierating mr on m.movie_id=mr.movie_id
11where extract(year_month from created_at) = 202002
12group by m.movie_id
13order by avg(mr.rating) desc, m.title limit 1)