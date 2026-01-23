1# Write your MySQL query statement below
2select user_id,
3    concat(
4        upper(left(name,1)),
5        lower(substr(name,2))
6    ) as name
7from Users
8order by user_id