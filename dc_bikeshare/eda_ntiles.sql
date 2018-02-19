-- NTILES
SELECT duration_seconds,
  NTILE(100) OVER (
    ORDER BY duration_seconds) AS percentile
  FROM tutorial.dc_bikeshare_q1_2012 
  ORDER BY 1 DESC