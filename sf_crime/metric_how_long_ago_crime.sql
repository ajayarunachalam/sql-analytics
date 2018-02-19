-- How long ago each incident was reported
SELECT
  (CURRENT_TIMESTAMP AT TIME ZONE 'PST' - cleaned_date) 
    AS how_long_ago_was_crime,
  NOW() AS now,
  cleaned_date,
  incidnt_num,
  category
  FROM tutorial.sf_crime_incidents_cleandate 
  ORDER BY how_long_ago_was_crime