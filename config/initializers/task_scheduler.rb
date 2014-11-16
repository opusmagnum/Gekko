# require './lib/index_quotes'
scheduler = Rufus::Scheduler.new

scheduler.every("15m") do
	# byebug
	# quotes = IndexQuotes.index('^GSPC, ^N225, ^GDAXI')
	quotes = StockQuote::Stock.quote('^GSPC, ^N225, ^GDAXI')
	# quotes = IndexQuotes.index('^GDAXI')
	# p quotes.inspect
	p DateTime.now
	quotes.each do |q| 
	  p "#{DateTime.now}: #{q.symbol}, #{q.previous_close}, #{q.last_trade_price_only}"
	  Quote.create(symbol: q.symbol, previous_close: q.previous_close, last_trade_price_only: q.last_trade_price_only)
	end
end 