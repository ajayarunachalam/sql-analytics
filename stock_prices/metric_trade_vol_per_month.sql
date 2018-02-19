-- Average trade volumes per month
SELECT year, month, AVG(volume) AS avg_trades_per_month
FROM tutorial.aapl_historical_stock_price 
GROUP BY year, month
ORDER BY AVG(volume) DESC;