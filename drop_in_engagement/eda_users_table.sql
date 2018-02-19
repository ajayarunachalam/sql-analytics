-- exploring the user table
SELECT user_id, Count(state)
  FROM tutorial.yammer_users 
GROUP BY user_id
HAVING Count(state) > 1;

SELECT * FROM tutorial.yammer_users ;

-- users per language
SELECT COUNT(user_id) AS num_users,
  language
  FROM tutorial.yammer_users 
  GROUP BY language
  ORDER BY num_users DESC