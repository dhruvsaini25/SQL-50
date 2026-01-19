1# Write your MySQL query statement below
2SELECT Visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans
3FROM Visits
4LEFT JOIN Transactions ON Visits.visit_id=Transactions.visit_id
5WHERE Transactions.transaction_id IS NULL
6GROUP BY Visits.customer_id