/* Selects all players and teams in an INNER JOIN 
 * An INNER JOIN is the same as a JOIN.  */
/*Think of an INNER JOIN as INTERSECTION */
/* all the rows with matching school_name are
returned. */
SELECT players.*,
       teams.*
  FROM benn.college_football_players players
  JOIN benn.college_football_teams teams
    ON teams.school_name = players.school_name;

/* individually name identical columns, to have more than
one column in the result set */
SELECT players.school_name AS player_school_name,
  teams.school_name AS team_school_name
  FROM benn.college_football_players players
  JOIN benn.college_football_teams teams
    ON teams.school_name = players.school_name;

/*
Exercise:
Write a query that displays player names, 
school names and conferences for schools 
in the "FBS (Division I-A Teams)" division.
*/
-- First check the column names
SELECT * FROM
  benn.college_football_players PLAYERS;
-- check cols for teams
SELECT * FROM
  benn.college_football_teams;
-- Answer to exercise
SELECT players.player_name,
  teams.school_name,
  teams.conference
  FROM benn.college_football_players AS players
  JOIN benn.college_football_teams AS teams
    ON teams.school_name = players.school_name
    WHERE teams.division = 'FBS (Division I-A Teams)'

-- More practice with Joins
SELECT players.*,teams.* FROM
benn.college_football_players players
JOIN benn.college_football_teams teams
ON players.school_name = teams.school_name