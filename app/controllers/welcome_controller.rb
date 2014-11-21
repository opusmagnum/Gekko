class WelcomeController < ApplicationController
  def index
  	@dax = Quote.last_index('^GDAXI')
  	@nikkei = Quote.last_index('^N225')
  	@snp = Quote.last_index('^GSPC')
  	@todays_color = (@dax.last_trade_price_only - @dax.previous_close)>0 ? "green" : "red"
  end
end
