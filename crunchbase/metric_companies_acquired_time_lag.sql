-- how do these dates appear?
SELECT (a.acquired_at_cleaned::timestamp - c.founded_at_clean::timestamp) AS count_years
  FROM tutorial.crunchbase_companies_clean_date c JOIN
    tutorial.crunchbase_acquisitions_clean_date a
    ON a.company_permalink = c.permalink;

-- num of companies acquired in various time lags
-- count of total companies too
-- grouped by category of original company
-- excludes companies without a registered founding date
SELECT 
  COUNT(CASE WHEN
    (c.founded_at_clean IS NOT NULL) AND
    (a.acquired_at_cleaned - c.founded_at_clean::timestamp <= INTERVAL '3 years')
  THEN 1 ELSE NULL END) AS acquired_after_3_years,
  COUNT( CASE WHEN
    c.founded_at_clean IS NOT NULL AND
    a.acquired_at_cleaned - c.founded_at_clean::timestamp <= INTERVAL '5 years'
    THEN 1 ELSE NULL END ) AS acquired_after_5_years,
  COUNT( CASE WHEN
    c.founded_at_clean IS NOT NULL AND
    a.acquired_at_cleaned - c.founded_at_clean::timestamp <= INTERVAL '10 years'
  THEN 1 ELSE NULL END) AS acquired_after_10_years,
  c.category_code,
  COUNT(company_permalink) AS total_companies_acquired
  FROM tutorial.crunchbase_companies_clean_date c INNER JOIN
    tutorial.crunchbase_acquisitions_clean_date a 
    ON c.permalink = a.company_permalink
  GROUP BY c.category_code
  ORDER BY acquired_after_3_years DESC, total_companies_acquired