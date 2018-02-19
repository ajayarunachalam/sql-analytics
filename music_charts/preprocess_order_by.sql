--- ORDER BY
-- sorted a-z
SELECT *
  FROM tutorial.billboard_top_100_year_end 
ORDER BY artist;

-- sorted z-a
-- Note: ORDER BY is run before LIMIT. That is, the
--  table is sorted then chopped.
SELECT *
  FROM tutorial.billboard_top_100_year_end 
ORDER BY artist DESC;

-- exercise
-- sort songs from 2012 from z to a
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year = 2012 ORDER BY song_name DESC;

-- Order by multiple columns
-- Top 3 songs in recent years
-- Show most recent songs first but keep ranking in 1,2,3, etc. order
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year_rank <=3
  ORDER BY year DESC, year_rank;

-- exercise
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year = 2010 
  ORDER BY year_rank, artist;
  
/* This is a block comment
I can write about anything in 
multiple lines */
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year = 2013;

-- exercise
/* All songs where T-pain was a group member,
sorted by chart ranks, from lowest to 
highest rank */
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE "group" ILIKE '%T-PAIN%'
  ORDER BY year_rank DESC;
  
-- exercise
/* songs ranked between 10 and 20 (inclusive)
in 1993, 2003, or 2013. Order by year and rank.
Write comments in WHERE clause */
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year IN (2013, 2003, 1993) --one of these years
  AND year_rank BETWEEN 10 AND 20 --ranked between 10 and 20
ORDER BY year, year_rank