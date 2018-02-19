-- Events has a location

-- Also Test language per location
SELECT * FROM tutorial.yammer_users ;

-- Test engagement per location
SELECT DATE_TRUNC('week', occurred_at) AS week,
  location,
  COUNT(CASE WHEN event_type = 'engagement' THEN 'engagement'
    ELSE NULL END) AS num_engagements,
  COUNT(CASE WHEN event_type = 'signup_flow' THEN 'signup_flow'
    ELSE NULL END) AS num_signup_flow
  FROM tutorial.yammer_events 
  GROUP BY week, location
  ORDER BY week, location

  