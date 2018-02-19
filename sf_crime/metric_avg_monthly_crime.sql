-- avg monthly crime per category
SELECT AVG(sub.monthly_crime_count) AS avg_count,
  sub.category
  FROM (
    SELECT COUNT(incidnt_num) AS monthly_crime_count,
      category,
      -- crimes per category, then per month
      DATE_TRUNC('month', cleaned_date) AS month
      FROM tutorial.sf_crime_incidents_cleandate 
      GROUP BY category, month
      ) sub
  -- avg over months in each category
  GROUP BY sub.category