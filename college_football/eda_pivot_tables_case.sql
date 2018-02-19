-- Pivot tables with CASE
-- i.e. creating new columns for each separate CASE group
-- i.e. grouping and taking a transpose

-- count of players in each year and in each state and total count
SELECT 
  COUNT(CASE WHEN year = 'FR' THEN 1 ELSE NULL END) AS fr_count,
  COUNT(CASE WHEN year = 'SO' THEN 1 ELSE NULL END) AS so_count,
  COUNT(CASE WHEN year = 'JR' THEN 1 ELSE NULL END) AS jr_count,
  COUNT(CASE WHEN year = 'SR' THEN 1 ELSE NULL END) AS sr_count,
  COUNT(1) AS total_player_count,
  state
FROM benn.college_football_players 
GROUP BY state
ORDER BY total_player_count DESC;

-- The number of players at schools with names that start with 
-- A through M, and the number at schools with names 
-- starting with N - Z.
SELECT CASE 
    WHEN school_name < 'n' THEN 'a-m'
    WHEN school_name >= 'n' THEN 'n-z'
    ELSE NULL 
  END AS school_name_group,
  COUNT(1) AS count_per_school
FROM benn.college_football_players
GROUP BY school_name_group
ORDER BY count_per_school
LIMIT 100