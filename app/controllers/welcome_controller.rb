class WelcomeController < ApplicationController
  def index
  	@dax = Quote.last_index('^GDAXI')
  	@nikkei = Quote.last_index('^N225')
  	@snp = Quote.last_index('^GSPC')
  end
end
