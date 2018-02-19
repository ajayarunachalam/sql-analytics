-- SQL string cleaning functions
-- SF crime data
SELECT * FROM
  tutorial.sf_crime_incidents_2014_01 ;
  
-- pull substring from left by n chars
SELECT incidnt_num,
  "date",
  LEFT("date", 10) AS cleaned_date
  FROM tutorial.sf_crime_incidents_2014_01 ;

-- pull substring from right by n chars
SELECT incidnt_num,
  "date",
  RIGHT("date", 17) AS cleaned_time
  FROM tutorial.sf_crime_incidents_2014_01 ;
  
-- if didn't want to count manually how many chars
SELECT incidnt_num,
  "date",
  RIGHT("date", LENGTH("date") - 11) AS cleaned_time
FROM tutorial.sf_crime_incidents_2014_01