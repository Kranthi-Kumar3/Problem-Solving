# Write your MySQL query statement below

SELECT
    machine_id,
    round(( SUM( CASE WHEN activity_type = 'end' THEN timestamp END ) - SUM( CASE WHEN activity_type = 'start' THEN timestamp END ) ) 
          / count(distinct process_id), 3)
     as processing_time
FROM
    activity
GROUP BY machine_id