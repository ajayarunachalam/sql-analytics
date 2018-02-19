-- More GROUP BY practice
-- order of cols doesn't matter
SELECT year, month, COUNT(close) AS number_of_shares_trading
FROM tutorial.aapl_historical_stock_price 
GROUP BY month, year
ORDER BY year, month
LIMIT 100