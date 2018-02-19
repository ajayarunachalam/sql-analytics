-- LAG and LEAD basics
SELECT start_terminal,
  duration_seconds,
  LAG(duration_seconds, 1) OVER
    (PARTITION BY start_terminal ORDER BY duration_seconds)
    AS lag,
  LEAD(duration_seconds, 1) OVER
    (PARTITION BY start_terminal ORDER BY duration_seconds)
    AS lead
  FROM tutorial.dc_bikeshare_q1_2012 
  WHERE start_time < '2012-01-08'
  ORDER BY start_terminal, duration_seconds