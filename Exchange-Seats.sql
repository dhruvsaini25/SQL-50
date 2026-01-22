1# Write your MySQL query statement below
2select 
3case
4    when id = (select max(id) from seat) and id%2=1 then id
5    when id % 2=1 then id+1 else id-1 end as id, 
6    student
7from Seat
8order by id