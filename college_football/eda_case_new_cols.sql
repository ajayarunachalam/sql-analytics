-- More CASE practice

-- players from California 
SELECT school_name, player_name, state,
  CASE WHEN state = 'CA' THEN 'yes'
  ELSE 'no' END AS from_california
  FROM benn.college_football_players 
  ORDER BY from_california DESC;
  
-- diving players based on height
-- first I'll run a select statement to see the height range
SELECT DISTINCT height
  FROM benn.college_football_players 
  ORDER BY height;
  
-- Dividing the height
-- height is from 0 to 83
SELECT *,
  CASE 
    WHEN height < 25 AND height >= 0 THEN '0-25'
    WHEN height < 50 AND height >= 25 THEN '25-50'
    WHEN height < 75 AND height >= 50 THEN '50-75'
    ELSE '75-100'
  END AS height_class
  FROM benn.college_football_players 
  ORDER BY height_class;
  
-- Identify if player is Junior or Senior
SELECT *,
  CASE 
    WHEN year = 'JR' OR year='SR' THEN 'upper_classman'
    ELSE 'lower_classman'
  END AS is_upper_classman
  FROM benn.college_football_players 
  ORDER BY is_upper_classman DESC
