-- Order by problems from mode 

-- DATA
SELECT *
FROM tutorial.billboard_top_100_year_end;

-- 1
SELECT *
FROM tutorial.billboard_top_100_year_end 
WHERE "group" ILIKE '%t%pain%'
ORDER BY year_rank DESC;

-- 2
SELECT *
FROM tutorial.billboard_top_100_year_end 
WHERE year IN (1993, 2003, 2013) AND
(year_rank BETWEEN 10 AND 20)
ORDER BY year, year_rank