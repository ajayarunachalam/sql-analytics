--select top 100 songs from years 1985 to 1990
SELECT * from tutorial.billboard_top_100_year_end 
WHERE year BETWEEN 1985 AND 1990 AND (year_rank
BETWEEN 1 AND 100)