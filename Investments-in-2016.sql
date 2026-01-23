1# Write your MySQL query statement below
2select round(sum(tiv_2016),2) as tiv_2016
3from Insurance
4where tiv_2015 in 
5    (select tiv_2015 from insurance group by tiv_2015 having count(*)>1)
6        and
7        (lat,lon) in (select lat, lon from insurance group by lat, lon having count(*)=1);
8    