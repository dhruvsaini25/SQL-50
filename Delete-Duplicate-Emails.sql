1# Write your MySQL query statement below
2delete p1
3from person p1, person p2
4where p1.email=p2.email and p1.id>p2.id