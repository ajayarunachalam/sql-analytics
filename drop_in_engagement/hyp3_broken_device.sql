-- Hypothesis 3: Broken Device
-- metric to test: # of events for each device over time

-- First, explore the table which has devices
SELECT COUNT(occurred_at) AS num_events,
  device
  FROM tutorial.yammer_events 
  GROUP BY device
  ORDER BY num_events DESC