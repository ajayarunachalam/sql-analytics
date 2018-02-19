-- player names, schools, conferences in FBS division
-- remember join is the same as inner join
SELECT p.player_name,
  p.school_name,
  t.conference,
  t.division
  FROM benn.college_football_players p
  JOIN benn.college_football_teams t
  ON p.school_name = t.school_name
  WHERE t.division ILIKE 'fbs%'