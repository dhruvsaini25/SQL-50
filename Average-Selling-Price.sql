1# Write your MySQL query statement below
2SELECT p.product_id, 
3    IFNULL(ROUND(SUM(p.price * u.units)/SUM(u.units),2),0) AS average_price
4FROM Prices p
5LEFT JOIN UnitsSold u ON p.product_id=u.product_id
6    AND u.purchase_date BETWEEN p.start_date AND p.end_date
7GROUP BY p.product_id