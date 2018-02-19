-- Creating temporary tables
SELECT * 
  -- this syntax is only supported in some frameworks
  -- such as SQL Server
  INTO #SFALL
  FROM tutorial.sf_crime_incidents_cleandate