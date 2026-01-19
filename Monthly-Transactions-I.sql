1# Write your MySQL query statement below
2SELECT 
3    date_format(trans_date, '%Y-%m') AS month,
4    country,
5    COUNT(id) AS trans_count,
6    SUM(IF(state='approved',1,0)) AS approved_count,
7    SUM(amount) AS trans_total_amount,
8    SUM(IF(state='approved',amount,0))approved_total_amount
9FROM Transactions
10GROUP BY month, country