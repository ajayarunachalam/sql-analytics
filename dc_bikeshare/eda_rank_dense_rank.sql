-- RANK doesn't double count ties
-- it counts them as: 1, 2, 3, 4, 4, 6, etc.
-- because the 'start_time' had the same time at rank 4
SELECT duration,
  start_time,
  start_terminal,
  RANK() OVER (ORDER BY start_time) AS rank
  FROM tutorial.dc_bikeshare_q1_2012 ;
  
-- DENSE RANK doesn't skip ties
-- it counts them as: 1, 2, 3, 4, 4, 5, 6 etc.
-- because the 'start_time' had the same time at rank 4
SELECT duration,
  start_time,
  start_terminal,
  DENSE_RANK() OVER (ORDER BY start_time) AS dense_rank
  FROM tutorial.dc_bikeshare_q1_2012