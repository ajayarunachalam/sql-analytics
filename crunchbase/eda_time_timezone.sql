-- current timestamps
-- in UTC or in timezone configured by database
-- Mode is configuered in UTC
SELECT CURRENT_DATE AS date,
  CURRENT_TIME AS TIME,
  CURRENT_TIMESTAMP AS timestamp,
  LOCALTIME AS localtime,
  LOCALTIMESTAMP AS localtimestamp,
  NOW() AS now;
  
SELECT
  CURRENT_TIME AT TIME ZONE 'PST' AS time_pst,
  CURRENT_TIMESTAMP AT TIME ZONE 'PST' AS timestamp,
  LOCALTIME AS localtime,
  LOCALTIMESTAMP AS localtimestamp,
  NOW() AS now