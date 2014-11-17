class Products < ActiveRecord::Base
	has_one: user
	has_one: order
	has_one: card
end
