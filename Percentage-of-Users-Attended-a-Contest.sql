1# Write your MySQL query statement below
2SELECT contest_id,
3    ROUND(COUNT(DISTINCT user_id)*100 / (SELECT COUNT(user_id) FROM Users),2) AS percentage
4FROM Register
5GROUP BY contest_id
6ORDER BY percentage DESC, contest_id ASC