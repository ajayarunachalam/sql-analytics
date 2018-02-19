SELECT *
FROM tutorial.billboard_top_100_year_end 
WHERE year_rank IN (1, 2, 3) AND "artist" ILIKE 'ali%'