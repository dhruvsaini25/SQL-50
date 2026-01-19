1# Write your MySQL query statement below
2SELECT ast.machine_id, 
3    ROUND(AVG(ae.timestamp-ast.timestamp),3) AS processing_time
4FROM Activity ast
5JOIN Activity ae 
6    ON ast.machine_id=ae.machine_id
7    AND ast.process_id=ae.process_id
8WHERE ast.activity_type= 'start'
9    AND ae.activity_type= 'end'
10GROUP BY ast.machine_id;