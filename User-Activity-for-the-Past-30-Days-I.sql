1# Write your MySQL query statement below
2select activity_date as day, count(distinct user_id) as active_users
3from Activity
4where activity_date between date_sub('2019-07-27',interval 29 day) and '2019-07-27'
5group by day