-- distinct year in aapl stock prices
SELECT DISTINCT year
FROM tutorial.aapl_historical_stock_price 
ORDER BY year;

-- distinct year, count of trades
SELECT DISTINCT year, COUNT(close)
FROM tutorial.aapl_historical_stock_price 
GROUP BY year
ORDER BY year;

-- 12 unique months in the year
SELECT COUNT(DISTINCT month) AS unique_months_in_a_year
FROM tutorial.aapl_historical_stock_price;

-- Unique values in month per year
SELECT year, 
      COUNT(DISTINCT month) AS unique_months
FROM tutorial.aapl_historical_stock_price 
GROUP BY year;

-- unique years and unique months
SELECT COUNT(DISTINCT year) AS unique_years,
  COUNT(DISTINCT month) AS unique_months
FROM tutorial.aapl_historical_stock_price