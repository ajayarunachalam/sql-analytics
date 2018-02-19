-- players in Georgia order by weight
SELECT players.player_name,
  players.school_name,
  players.state,
  players.weight,
  players.position
  FROM benn.college_football_players players
  WHERE players.state = 'GA'
  ORDER BY weight DESC