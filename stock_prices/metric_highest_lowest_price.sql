-- lowest and highest prices each month
SELECT MIN(low) AS lowest_monthly_price,
  MAX(high) AS highest_monthly_price,
  month, year
  FROM tutorial.aapl_historical_stock_price 
  GROUP BY year, month ORDER BY year, month