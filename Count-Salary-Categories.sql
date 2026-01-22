1# Write your MySQL query statement below
2select "Low Salary" as category,
3sum(if(income<20000, 1, 0)) as accounts_count
4from Accounts
5union
6select "Average Salary" as category,
7sum(if(income between 20000 and 50000, 1, 0)) as accounts_count
8from Accounts
9union
10select "High Salary" as category,
11sum(if(income>50000, 1, 0)) as accounts_count
12from Accounts