-- Joins on college football teams
SELECT * FROM benn.college_football_players ;
SELECT * FROM benn.college_football_teams ;

-- which conference has the highest average weight?
SELECT AVG(weight) avg_weight,
  t.conference
  FROM benn.college_football_players p 
  JOIN benn.college_football_teams t
  ON p.school_name = t.school_name
  GROUP BY t.conference
  ORDER BY avg_weight DESC