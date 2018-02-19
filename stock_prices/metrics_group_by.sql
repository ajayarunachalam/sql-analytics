-- Group by, apple stock prices

-- average close price per year
SELECT year, SUM(close) / COUNT(close) AS avg_close_per_year
FROM tutorial.aapl_historical_stock_price 
GROUP BY year ORDER BY year;

-- count of rows per year
SELECT year, COUNT(1)
FROM tutorial.aapl_historical_stock_price 
GROUP BY year ORDER BY year;

-- count of shares traded per month
SELECT year, month, COUNT(1)
FROM tutorial.aapl_historical_stock_price 
GROUP BY year, month ORDER BY year, month;

-- avg of stock price per month
SELECT year, month, SUM(close) / COUNT(close) AS avg_monthly_close
FROM tutorial.aapl_historical_stock_price 
GROUP BY year, month ORDER BY year, month