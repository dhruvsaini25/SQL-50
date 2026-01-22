1# Write your MySQL query statement below
2select x, y, z,
3case
4    when x+y>z and y+z>x and z+x>y then 'Yes' else 'No' end as triangle
5from Triangle