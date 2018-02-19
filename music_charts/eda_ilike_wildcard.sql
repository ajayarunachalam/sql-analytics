SELECT *
  FROM tutorial.billboard_top_100_year_end 
  -- _ substitutes a letter
  -- % checks for any letter after the phrase
  WHERE "group" ILIKE 'dr_k%'

SELECT *
FROM tutorial.billboard_top_100_year_end 
WHERE "artist" ILIKE 'Hammer' OR "artist" ILIKE
  'elvis%' or "artist" LIKE 'M.C%'