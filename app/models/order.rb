class Order < ActiveRecord::Base
	has_one: user
	has_one: card
	has_many: products
end
