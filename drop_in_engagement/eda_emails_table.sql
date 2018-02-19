-- Exploring the emails table
SELECT * FROM tutorial.yammer_emails ;

-- # of users per action
SELECT COUNT(user_id) AS num_users,
  action
  FROM tutorial.yammer_emails 
  GROUP BY action
  ORDER BY num_users DESC