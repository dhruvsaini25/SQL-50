1# Write your MySQL query statement below
2select employee_id
3from employees
4where salary <30000 and manager_id not in (select employee_id from employees)
5order by employee_id