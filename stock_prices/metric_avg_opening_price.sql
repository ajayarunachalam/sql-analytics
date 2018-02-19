-- calculating averages
SELECT SUM(open) / COUNT(open) AS avg_opening_price
FROM tutorial.aapl_historical_stock_price ;

SELECT * FROM tutorial.aapl_historical_stock_price