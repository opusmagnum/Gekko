scheduler = Rufus::Scheduler.new

scheduler.every("15m") do
	# byebug
	quotes = StockQuote::Stock.quote('^GSPC, ^N225, ^GDAXI')
	quotes.each do |q| 
	  logger.debug "#{DateTime.now}: #{q.symbol}, #{q.previous_close}, #{q.last_trade_price_only}"
	  Quote.create(symbol: q.symbol, previous_close: q.previous_close, last_trade_price_only: q.last_trade_price_only)
	end
end 