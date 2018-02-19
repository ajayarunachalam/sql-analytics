-- Exploring the Events table
SELECT * FROM tutorial.yammer_events ;

-- # of unique users who are engaging
SELECT COUNT(DISTINCT user_id)
FROM tutorial.yammer_events ;

-- # of engagements per user
SELECT COUNT(occurred_at) AS count_of_engagements,
  user_id
  FROM tutorial.yammer_events 
  GROUP BY user_id
  HAVING COUNT(occurred_at) > 200
  ORDER BY count_of_engagements DESC;
  
-- # of engagements per device
-- tablets have the least engagements
SELECT COUNT(occurred_at) AS count_of_engagements,
  device
  FROM tutorial.yammer_events 
  GROUP BY device
  ORDER BY count_of_engagements