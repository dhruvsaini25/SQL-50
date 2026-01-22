1# Write your MySQL query statement below
2select employee_id, department_id
3from Employee
4where primary_flag='y'
5group by employee_id
6union
7select employee_id, department_id
8from Employee
9group by employee_id
10having count(employee_id)=1