-- highest single day increase
SELECT MAX(close - open) AS "Highest single day increase"
FROM tutorial.aapl_historical_stock_price