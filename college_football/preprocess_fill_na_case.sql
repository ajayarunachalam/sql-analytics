-- CASE for additional columns
SELECT *,
  CASE WHEN weight < 180 THEN 'is_light'
  ELSE 'is_heavy' END AS weight_class
  FROM benn.college_football_players;
  
-- Get One-hot vector
SELECT position, player_name, school_name,
  CASE WHEN position = 'WR' THEN 1
    ELSE 0 END AS is_WR
  FROM benn.college_football_players 
  ORDER BY is_WR