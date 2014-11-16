# http://chartapi.finance.yahoo.com/instrument/1.0/\^GDAXI/chartdata\;type=quote\;range=1d/json
# https://developer.yahoo.com/yql/console/?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22YHOO%22%2C%22AAPL%22%2C%22GOOG%22%2C%22MSFT%22)&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys#h=select+*+from+yahoo.finance.quotes+where+symbol+in+(%22YHOO%22)
# require 'stock_quote'
# require 'awesome_print'
# class IndexQuotes
#   def initialize(stocks_index)
#     #@url = "http://chartapi.finance.yahoo.com/instrument/1.0/#{stocks_index}/chartdata;type=quote;range=1d/json"
#     # @options = { query: {site: service, page: page} }
#   end

#   def self.index(index_symbol)
#     # j = self.class.get(@url)
#     # p JSON.parse("finance_charts_json_callback({})")
#     q = StockQuote::Stock.quote(index_symbol)
#     # q =  StockQuote::Stock.history("^GDAXI", '2014-11-13', '2014-11-14')
#     q
#   end

# end

# i = IndexQuotes.index("^GDAXI")
# ap i
# ap i.previous_close
# ap i.last_trade_price_only

# i = IndexQuotes.index("^N225")
# ap i
# ap i.previous_close
# ap i.last_trade_price_only


# quotes = IndexQuotes.index('^GSPC, ^N225, ^GDAXI')
# quotes.each do |q| 
#   ap "#{q.symbol}, #{q.previous_close}, #{q.last_trade_price_only}"
# end
