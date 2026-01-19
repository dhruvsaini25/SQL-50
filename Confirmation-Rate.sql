1# Write your MySQL query statement below
2SELECT sp.user_id, 
3    ROUND(AVG(IF (c.action='confirmed',1,0)),2) AS confirmation_rate
4FROM Signups sp
5LEFT JOIN Confirmations c ON sp.user_id=c.user_id
6GROUP BY sp.user_id
7