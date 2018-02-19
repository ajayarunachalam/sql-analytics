-- Turning dates into more useful dates
SELECT * FROM
  tutorial.sf_crime_incidents_cleandate;

SELECT cleaned_date,
  EXTRACT('year' FROM cleaned_date) AS year,
  EXTRACT('month' FROM cleaned_date) AS month,
  EXTRACT('decade' FROM cleaned_date) AS decade,
  EXTRACT('dow' FROM cleaned_date) AS day_of_week
  FROM tutorial.sf_crime_incidents_cleandate ;
  
-- Rounds to the nearest specified unit
-- i.e. displays the first value in that period
SELECT cleaned_date,
  DATE_TRUNC('year', cleaned_date) AS year,
  DATE_TRUNC('month', cleaned_date) AS month,
  DATE_TRUNC('decade', cleaned_date) AS decade
  FROM tutorial.sf_crime_incidents_cleandate
  ORDER BY cleaned_date ASC