-- Subqueries
SELECT * FROM tutorial.sf_crime_incidents_2014_01 ;

-- All warrant arrests which were not resolved
SELECT sub.* FROM 
  (
  SELECT * FROM tutorial.sf_crime_incidents_2014_01 
  WHERE descript ILIKE 'warrant%'
  ) sub
  WHERE sub.resolution = 'NONE';

-- same as a two-condition where
SELECT * FROM
  tutorial.sf_crime_incidents_2014_01 
  WHERE descript ILIKE 'warrant%' AND resolution = 'NONE';