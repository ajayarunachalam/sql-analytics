-- exposing null values in a table
SELECT * FROM
tutorial.billboard_top_100_year_end 
WHERE "song_name" IS NULL OR artist IS NULL;

-- exercise
SELECT * FROM
tutorial.billboard_top_100_year_end 
WHERE song_name IS NULL