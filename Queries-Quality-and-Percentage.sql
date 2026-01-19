1# Write your MySQL query statement below
2SELECT query_name, 
3ROUND(AVG(rating/position),2) AS quality, 
4ROUND(AVG(IF(rating <3,1,0)*100),2) AS poor_query_percentage
5FROM Queries
6WHERE query_name IS NOT NULL
7GROUP BY query_name