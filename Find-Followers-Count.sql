1# Write your MySQL query statement below
2select user_id, count(follower_id) as followers_count
3from Followers
4group by user_id
5order by user_id