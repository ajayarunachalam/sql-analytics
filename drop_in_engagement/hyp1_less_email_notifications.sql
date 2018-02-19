-- Hyp 1: Lack of Notifications
--  Metrics: # notifications per user by action
--    did this number drop overtime for all actions

-- Explore notifications (emails) table
SELECT * FROM tutorial.yammer_emails ;

-- count of users per action type
SELECT COUNT(user_id) AS num_users,
  action
  FROM tutorial.yammer_emails 
  GROUP BY action
  ORDER BY num_users DESC;
  
-- so less than 20% of users clickthrough the email notification

-- Next, I'll check whether this clickthrough rate changed
-- over time.
SELECT DATE_TRUNC('week', occurred_at) AS week_of_email,
  COUNT(CASE WHEN action ILIKE 'sent_weekly_digest'
    THEN 'sent_weekly_digest' ELSE NULL END) AS count_sent_email,
  COUNT(CASE WHEN action = 'email_open' 
    THEN 'email_open' ELSE NULL END) AS count_email_opened,
  COUNT(CASE WHEN action = 'email_clickthrough'
    THEN 'email_clickthrough' ELSE NULL END) 
    AS count_email_clickedthrough,
  COUNT(CASE WHEN action = 'sent_reengagement_email'
    THEN 'sent_reengagement_email' ELSE NULL END) 
    AS count_sent_reengagement_email
  FROM tutorial.yammer_emails 
  GROUP BY week_of_email;

-- Indeed, this gets us closer to the source of the problem.
/* From the original graph, I see that the weekly active users decline
 * during the week of 7/28/14. Here I see that although the number of 
 * email sent increases during this week, many metrics decrease at precisely
 * this point in time. Namely, the count of emails clicked through and the 
 * count of emails opened. Thus, we may hypothesize next that there could be
 * a national holiday, so employees are not checking their emails.
*/
