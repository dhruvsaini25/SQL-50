1# Write your MySQL query statement below
2select class
3from Courses
4group by class having count(student) >=5