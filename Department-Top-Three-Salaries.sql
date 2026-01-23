1# Write your MySQL query statement below
2with SalaryRanking as (select d.name as Department, e.name as Employee, e.salary as Salary,
3    dense_rank() over (
4        partition by e.departmentId
5        order by e.salary desc
6    ) as rnk
7from Employee e
8join Department d on e.departmentId=d.id)
9select Department, Employee, Salary
10from SalaryRanking
11where rnk<=3;