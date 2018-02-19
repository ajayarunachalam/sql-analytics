-- Casting data types
SELECT CAST(c.funding_total_usd AS VARCHAR(1024))
  FROM tutorial.crunchbase_companies_clean_date c;
  
SELECT c.founded_at_clean::VARCHAR(1024)
  FROM tutorial.crunchbase_companies_clean_date c