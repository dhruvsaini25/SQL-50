1# Write your MySQL query statement below
2SELECT *
3FROM Cinema
4WHERE id%2!=0 HAVING description!='boring'
5ORDER BY rating DESC