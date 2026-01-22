1# Write your MySQL query statement below
2select e1.employee_id, e1.name, count(e2.reports_to) as reports_count, round(avg(e2.age),0)as average_age
3from employees e1
4inner join employees e2 on e1.employee_id=e2.reports_to
5group by e1.employee_id
6order by e1.employee_id