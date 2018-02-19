-- next, I'll take the sum over the parts
SELECT duration_seconds,
  start_time,
  start_terminal,
  SUM(duration_seconds) OVER (PARTITION BY
    start_terminal ORDER BY start_time)
    AS running_total
  FROM tutorial.dc_bikeshare_q1_2012 
  WHERE start_time < '2012-01-08';
  
-- running count, sum, avg
-- next, I'll take the sum over the parts
SELECT duration_seconds,
  start_time,
  start_terminal,
  SUM(duration_seconds) OVER (PARTITION BY
    start_terminal ORDER BY start_time)
    AS running_total,
  COUNT(duration_seconds) OVER (PARTITION BY
    start_terminal ORDER BY start_time)
    AS running_count,
  AVG(duration_seconds) OVER (PARTITION BY
    start_terminal ORDER BY start_time)
    AS running_avg_duration
  FROM tutorial.dc_bikeshare_q1_2012 
  WHERE start_time < '2012-01-08';
  
-- without ORDER BY
-- running count, sum, avg
-- next, I'll take the sum over the parts
SELECT duration_seconds,
  start_time,
  start_terminal,
  SUM(duration_seconds) OVER (PARTITION BY
    start_terminal)
    AS total,
  COUNT(duration_seconds) OVER (PARTITION BY
    start_terminal)
    AS count,
  AVG(duration_seconds) OVER (PARTITION BY
    start_terminal)
    AS avg_duration
  FROM tutorial.dc_bikeshare_q1_2012 
  WHERE start_time < '2012-01-08'
