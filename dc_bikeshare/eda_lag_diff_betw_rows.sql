-- LAG and LEAD to calculate differences betw rows
SELECT start_terminal,
  duration_seconds,
  duration_seconds - LAG(duration_seconds, 1)
  OVER (PARTITION BY start_terminal ORDER BY duration_seconds)
    AS difference
  FROM tutorial.dc_bikeshare_q1_2012 
  WHERE start_time < '2012-01-08'
  ORDER BY start_terminal, duration_seconds;
  
SELECT *
FROM (
  SELECT start_terminal,
  duration_seconds,
  duration_seconds - LAG(duration_seconds, 1) OVER
  (PARTITION BY start_terminal ORDER BY duration_seconds)
    AS difference
  FROM tutorial.dc_bikeshare_q1_2012 
  WHERE start_time < '2012-01-08'
  ORDER BY start_terminal, duration_seconds
  ) sub
  WHERE sub.difference IS NOT NULL
LIMIT 100