1# Write your MySQL query statement below
2select id, count(*) as num
3from(
4    select requester_id as id from requestaccepted
5    union all
6    select accepter_id as id from requestaccepted
7) as all_ids
8group by id
9order by num desc limit 1;