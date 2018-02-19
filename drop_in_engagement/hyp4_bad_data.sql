-- Hypothesis 4: Bad Data
 -- i.e. Was the QA team mixed with production build
-- metric to test: # of distinct users producing the events

-- Here I see, that is not just a few users (QA team) creating the 
-- data. Instead, each device has hundreds to a couple thousand users
SELECT COUNT(DISTINCT user_id) AS unique_users,
  device
  FROM tutorial.yammer_events 
  GROUP BY device
  ORDER BY unique_users DESC;
  
-- Interestingly, the number of events logged is 20 times the number of users
-- Since this is a social network, it makes sense: each user has on average 20
--- actions in the site (login in, like_message, run_search, send_message, etc.)
SELECT * FROM tutorial.yammer_events ;

SELECT COUNT(DISTINCT occurred_at) AS num_events,
  device
  FROM tutorial.yammer_events 
  GROUP BY device
  ORDER BY num_events DESC;
