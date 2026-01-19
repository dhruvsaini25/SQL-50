1# Write your MySQL query statement below
2SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
3FROM Project p
4LEFT JOIN Employee e ON e.employee_id=p.employee_id
5GROUP BY p.project_id