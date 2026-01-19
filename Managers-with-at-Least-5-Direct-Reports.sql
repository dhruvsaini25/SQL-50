1# Write your MySQL query statement below
2SELECT e1.name
3FROM Employee e1
4INNER JOIN Employee e2 ON e1.id=e2.managerId
5GROUP BY e2.managerId
6HAVING COUNT(e2.managerId)>=5