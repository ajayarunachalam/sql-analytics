-- explore every month where AAPL reached above
-- $400 per share
-- HAVING clause filters on aggregate columns
SELECT MAX(high) AS month_high, month, year
  FROM tutorial.aapl_historical_stock_price
  GROUP BY month, year
    HAVING MAX(high) >= 400
  ORDER BY year, month