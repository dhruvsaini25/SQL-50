1# Write your MySQL query statement below
2SELECT DISTINCT author_id AS id
3
4FROM Views
5
6WHERE author_id = viewer_id
7
8ORDER BY id ASC;