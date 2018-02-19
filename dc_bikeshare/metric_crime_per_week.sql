-- number incidents reported per week
SELECT COUNT(incidnt_num),
   EXTRACT('week' FROM cleaned_date) AS week,
   EXTRACT('week' FROM cleaned_date)
  FROM tutorial.sf_crime_incidents_cleandate 
  GROUP BY week;
  
-- EXTRACT yields a double (a number) for the week
SELECT EXTRACT('week' FROM cleaned_date) AS week
  FROM tutorial.sf_crime_incidents_cleandate ;
  
-- number incidents per week
SELECT DATE_TRUNC('week', cleaned_date)::date AS week,
  COUNT(incidnt_num) AS incidents_per_week
  FROM tutorial.sf_crime_incidents_cleandate 
  GROUP BY week
  ORDER BY incidents_per_week DESC