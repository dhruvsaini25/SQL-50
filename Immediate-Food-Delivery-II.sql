1# Write your MySQL query statement below
2SELECT 
3    ROUND(SUM(IF(min_order_date=min_customer_pref_delivery_date,1,0)*100)/ COUNT(min_order_date),2) AS immediate_percentage
4FROM
5    (SELECT delivery_id, 
6    customer_id, 
7    min(order_date) AS min_order_date,
8    min(customer_pref_delivery_date) AS min_customer_pref_delivery_date
9    FROM Delivery
10    GROUP BY customer_id) AS new_table