-- count non-null rows in each table
-- doesn't matter what you count, since it's an inner join
SELECT COUNT(1) as companies_non_null,
  COUNT(1) AS acquisitions_non_null
  FROM tutorial.crunchbase_companies c
  JOIN tutorial.crunchbase_acquisitions a
  ON c.permalink = a.company_permalink;
  
-- non-null rows in each table
SELECT COUNT(c.permalink) as companies_non_null,
  COUNT(a.company_permalink) AS acquisitions_non_null
  FROM tutorial.crunchbase_companies c
  LEFT JOIN tutorial.crunchbase_acquisitions a
  ON c.permalink = a.company_permalink
LIMIT 100