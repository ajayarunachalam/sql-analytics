-- how many incidents reported each day?
SELECT COUNT(incidnt_num) AS count_incidents,
  day_of_week
  FROM tutorial.sf_crime_incidents_2014_01 
  GROUP BY day_of_week
  ORDER BY count_incidents DESC