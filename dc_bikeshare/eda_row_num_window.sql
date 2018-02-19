-- row number
SELECT start_terminal,
  start_time,
  duration,
  ROW_NUMBER() OVER (PARTITION BY start_terminal
    ORDER BY start_time) AS row_number
  FROM tutorial.dc_bikeshare_q1_2012 
  LIMIT (1000);
  
SELECT start_terminal,
  start_time,
  duration,
  ROW_NUMBER() OVER (ORDER BY start_time) AS row_number
  FROM tutorial.dc_bikeshare_q1_2012 LIMIT(100)