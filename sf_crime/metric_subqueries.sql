-- average number of incidents on a Friday in Dec, Jan, etc.
-- aggregations in multiple stages: use subqueries

SELECT date FROM tutorial.sf_crime_incidents_2014_01 ;

SELECT 
  -- MM/DD/YYYY is format of date in 2014_01 table
  LEFT(sub.date, 2) AS month,
  sub.day_of_week,
AVG(sub.incidents_per_week) AS avg_incidents_per_month
  FROM
  -- number of crime per day
  (SELECT COUNT(incidnt_num) AS incidents_per_week,
    day_of_week,
    "date"
    FROM tutorial.sf_crime_incidents_2014_01 
    GROUP BY day_of_week, "date"
    ) sub
  GROUP BY 1, 2
  ORDER BY 1, 2