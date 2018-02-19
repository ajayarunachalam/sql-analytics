-- NOT is commonly used with ILIKE
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year = 2013 AND year_rank <= 3
  AND "group" NOT ILIKE '%macklemore%';
  
-- NOT BETWEEN
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year_rank NOT BETWEEN 37 AND 100;

-- exercise
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year = 2013
  AND song_name NOT ILIKE '%A%';
  
-- NOT NULL
SELECT * FROM
  tutorial.billboard_top_100_year_end 
  WHERE year = 2013 
    AND artist IS NOT NULL