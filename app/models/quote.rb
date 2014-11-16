class Quote < ActiveRecord::Base

def self.last_index(isymbol)
	self.where(symbol: isymbol).order('created_at DESC').first
end

end