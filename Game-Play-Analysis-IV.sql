1# Write your MySQL query statement below
2select 
3round(sum(player_login)/count(distinct player_id),2) as fraction 
4from
5(select player_id,
6    datediff(event_date, min(event_date) over(partition by player_id))=1 as player_login
7from Activity) as new_table