SELECT DISTINCT language FROM
  tutorial.yammer_users ;

-- CASE, create columns for each language
SELECT 
  COUNT(CASE WHEN u.language ILIKE 'ital%' THEN 'italian_user' 
    ELSE NULL END) AS italian_user,
  COUNT(CASE WHEN u.language ILIKE 'indian%' THEN 'indian_user' 
    ELSE NULL END) AS indian_user,
      COUNT(CASE WHEN u.language ILIKE 'japan%' THEN 'japanese_user' 
    ELSE NULL END) AS japanese_user,
      COUNT(CASE WHEN u.language ILIKE 'chinese%' THEN 'chinese_user' 
    ELSE NULL END) AS chinese_user,
      COUNT(CASE WHEN u.language ILIKE 'english%' THEN 'english_user' 
    ELSE NULL END) AS english_user,
      COUNT(CASE WHEN u.language ILIKE 'spanish%' THEN 'spanish_user' 
    ELSE NULL END) AS spanish_user,
      COUNT(CASE WHEN u.language ILIKE 'portu%' THEN 'portuguese_user' 
    ELSE NULL END) AS portuguese_user,
      COUNT(CASE WHEN u.language ILIKE 'arabic%' THEN 'arabic_user' 
    ELSE NULL END) AS arabic_user,
      COUNT(CASE WHEN u.language ILIKE 'korean%' THEN 'korean_user' 
    ELSE NULL END) AS korean_user,
      COUNT(CASE WHEN u.language ILIKE 'russ%' THEN 'russian_user' 
    ELSE NULL END) AS russian_user,
      COUNT(CASE WHEN u.language ILIKE 'fren%' THEN 'french_user' 
    ELSE NULL END) AS french_user,
      COUNT(CASE WHEN u.language ILIKE 'german%' THEN 'german_user' 
    ELSE NULL END) AS german_user,
  DATE_TRUNC('week', e.occurred_at) AS week_occurred
  FROM tutorial.yammer_users u JOIN
    tutorial.yammer_events e
    ON u.user_id = e.user_id
  GROUP BY week_occurred;
  
-- Here we see that there is a steep drop in usership for the english users and
-- a shallow drop for the other langauge users. To be more consistent, I should
-- compare the percentage loss of each of the langauges at this week in time.
-- Perhaps they have an equal percentage loss, and if so, the decline may not be
-- caused by a national holiday.

-- Maybe something seasonal, because the decline starts in August (end of summer).
    