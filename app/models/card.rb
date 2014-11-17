class Card < ActiveRecord::Base
validates :card_number, uniqueness: true
validates :card_number, length: {minimum: 8, maximum: 20}

	has_one: user
	has_many: orders
	has_many: products
end
