-- Metrics for stock prices
-- Avg daily price change, averaged over a year
SELECT year, AVG(close - open) AS average_daily_price_change
FROM tutorial.aapl_historical_stock_price 
GROUP BY year ORDER BY year;