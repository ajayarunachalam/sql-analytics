-- Date Format
SELECT permalink,
  name, founded_at,
  founded_at_clean FROM
  tutorial.crunchbase_companies_clean_date 
  ORDER BY founded_at_clean;
  
-- Creating intervals: Time it took the company to get acquired
SELECT c.permalink,
  c.founded_at_clean,
  a.acquired_at_cleaned,
  a.acquired_at_cleaned -
    c.founded_at_clean::timestamp AS time_to_acquisition
  FROM tutorial.crunchbase_companies_clean_date c JOIN
    tutorial.crunchbase_acquisitions_clean_date a
    ON c.permalink = a.company_permalink
  ORDER BY c.founded_at_clean;
  
-- timestamp +/- interval = timestamp data type
-- adding a year from founding time
SELECT permalink, name,
  founded_at_clean,
  founded_at_clean::timestamp + INTERVAL '1 year' AS plus_one_year
  FROM tutorial.crunchbase_companies_clean_date 
  ORDER BY plus_one_year;
  
-- How long ago were all these companies founded?
SELECT permalink, name,
  founded_at_clean, NOW(),
  NOW() - founded_at_clean::timestamp AS company_life_so_far
  FROM tutorial.crunchbase_companies_clean_date
  WHERE founded_at_clean IS NOT NULL;
  
-- num of companies acquired in various time lags
-- count of total companies too
SELECT 
  COUNT(CASE WHEN
    c.founded_at_clean IS NOT NULL AND
    a.acquired_at_cleaned - c.founded_at_clean::timestamp = '3 years'
  THEN 1 ELSE NULL END) AS acquired_after_3_years,
  COUNT( CASE WHEN
    c.founded_at_clean IS NOT NULL AND
    a.acquired_at_cleaned - c.founded_at_clean::timestamp = '5 years'
    THEN 1 ELSE NULL END ) AS acquired_after_5_years,
  COUNT( CASE WHEN
    c.founded_at_clean IS NOT NULL AND
    a.acquired_at_cleaned - c.founded_at_clean::timestamp = '10 years'
  THEN 1 ELSE NULL END) AS acquired_after_10_years,
  c.category_code,
  COUNT(company_permalink) AS total_companies_acquired
  FROM tutorial.crunchbase_companies_clean_date c INNER JOIN
    tutorial.crunchbase_acquisitions_clean_date a 
    ON c.permalink = a.company_permalink
  GROUP BY c.category_code
  ORDER BY total_companies_acquired