-- duration of bike rides grouped by end terminal
-- and sorted by ride duration descending
SELECT duration,
  duration_seconds,
  end_terminal,
  end_time,
  start_time,
  SUM(duration_seconds) OVER (PARTITION BY end_terminal
    ORDER BY (end_time - start_time) DESC) AS running_total
  FROM tutorial.dc_bikeshare_q1_2012 ;
  
  -- same as order by duration_seconds
  SELECT duration,
  duration_seconds,
  end_terminal,
  end_time,
  start_time,
  SUM(duration_seconds) OVER (PARTITION BY end_terminal
    ORDER BY duration_seconds DESC) AS running_total
  FROM tutorial.dc_bikeshare_q1_2012