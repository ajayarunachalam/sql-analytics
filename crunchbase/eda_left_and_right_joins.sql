-- More practice with Joins
SELECT players.*,teams.* FROM
benn.college_football_players players
JOIN benn.college_football_teams teams
ON players.school_name = teams.school_name