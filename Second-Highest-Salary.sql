1# Write your MySQL query statement below
2select (select max(salary)
3from Employee
4where salary<(select max(salary) from Employee)) as SecondHighestSalary