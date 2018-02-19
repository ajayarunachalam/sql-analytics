-- Daily active users
SELECT COUNT(DISTINCT user_id) AS num_users,
  DATE_TRUNC('day', occurred_at) as daily_active_users
FROM tutorial.yammer_events 
GROUP BY 2
ORDER BY 2