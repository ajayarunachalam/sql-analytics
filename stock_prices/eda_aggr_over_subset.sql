-- GROUP BY for aggregation over parts of a table
SELECT month,sum() AS count
FROM tutorial.aapl_historical_stock_price 
GROUP BY month