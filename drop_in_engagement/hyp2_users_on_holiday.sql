-- Hyp 2: Engagements were only down in specific countries
-- Assumption for test: users with different languages are in different countries
-- Test weekly engagement across languages

SELECT * FROM 
    tutorial.yammer_events e RIGHT JOIN
      tutorial.yammer_users u
    ON e.user_id = u.user_id;
    
    
-- will have to accomplish this with CASE funcs
SELECT COUNT(DISTINCT e.user_id) num_users,
  language,
  DATE_TRUNC('week', e.occurred_at) AS weekly_active_users
  FROM 
  tutorial.yammer_events e RIGHT JOIN
      tutorial.yammer_users u
    ON e.user_id = u.user_id
  GROUP BY language, weekly_active_users
  ORDER BY weekly_active_users, language;
  
-- CASE, create columns for each language: See the query Test Hyp2