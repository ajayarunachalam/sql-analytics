-- get top 10 songs from 2012 
SELECT *
from tutorial.billboard_top_100_year_end 
WHERE year = 2012 AND year_rank <= 10;

-- exercise
-- top-10 hits for which Ludacris is part of the Group
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE "group" ILIKE '%ludacris%' 
  AND year_rank <= 10;

-- exercise
-- top ranked records in 1990, 2000, and 2010
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year_rank <= 10
  AND year IN (1990, 2000, 2010);

-- exercise
-- list all songs from 1960s with 'love' in the title
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE song_name ILIKE '%LOVE%'
  AND year BETWEEN 1960 AND 1969