-- Window functions
-- running total, from DC bikeshare dataset
-- Read as "take the sum of duration_seconds 
--   over the entire result set, in order by start_time"
SELECT duration_seconds,
  start_time,
  SUM(duration_seconds) OVER (ORDER BY start_time)
    AS running_total
  FROM tutorial.dc_bikeshare_q1_2012

-- Practice with window functions
SELECT duration_seconds,
  start_terminal,
  start_time,
  SUM(duration_seconds) OVER
  (PARTITION BY start_terminal
    ORDER BY start_time) AS running_total
  FROM tutorial.dc_bikeshare_q1_2012