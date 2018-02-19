-- Average Daily trade volume for Apple stock

-- data:
SELECT * FROM tutorial.aapl_historical_stock_price ;

-- perform calc
SELECT AVG(volume) as avg_daily_trade_vol
FROM tutorial.aapl_historical_stock_price