-- COALESCE: fills nulls with some value
-- here filled with default string of 'no description'
SELECT incidnt_num,
  descript,
  COALESCE(descript, 'No description')
  FROM tutorial.sf_crime_incidents_cleandate 
  ORDER BY descript DESC