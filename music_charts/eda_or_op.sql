-- ranked 5 or sang by Gotye
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year_rank = 5 OR artist = 'Gotye';

-- macklemore or JT in 2013
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year = 2013 
  AND (artist ILIKE 'macklemore' 
    OR artist ILIKE 'justin timberlake');
  
-- exercise
-- Katy Perry or Bon Jovi top 10
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE year_rank <= 10
  AND (artist ILIKE 'katy perry' 
      OR artist ILIKE 'bon jovi');

-- exercise
-- songs with 'California' in either 1970s or 1990s
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE (year BETWEEN 1970 AND 1979 OR year BETWEEN 1990
  AND 1999) AND song_name ILIKE '%california%';
  
-- exercise
-- top-100 Dre songs before 2001 or after 2009
SELECT *
  FROM tutorial.billboard_top_100_year_end 
WHERE (year <= 2001 OR year >= 2009)
  AND artist ILIKE '%dr. dre%'