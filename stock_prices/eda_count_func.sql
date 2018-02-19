-- Display the count of all rows
-- includes rows with null values
/* this overrides the multiple queries in one report
rule for some reason.*/
SELECT COUNT(*)
  FROM tutorial.aapl_historical_stock_price;
  
-- There are sometimes naturally occurring
-- null values:
/* If someone doesn't open an email, the 'open'
timestamp would be null */
-- Count of a column, removing nulls
SELECT COUNT(high) as "high"
  FROM tutorial.aapl_historical_stock_price;
  
SELECT COUNT(low) as low
  FROM tutorial.aapl_historical_stock_price;
  
SELECT COUNT(date) as count_of_date
  FROM tutorial.aapl_historical_stock_price;

-- Write a query that counts every single column. Which
-- column has the most null values?
-- from this result, high has the most null values.
select * from tutorial.aapl_historical_stock_price;
select (count("date"), count(year), count(month),
  count(open), count(high), count(low),
  count(close), count(volume), count(id))
  FROM tutorial.aapl_historical_stock_price