class User < ActiveRecord::Base
validates :email, uniqueness:true
validates :password, length: {minimum: 6}

	has_many: cards
	has_many: orders
	has_many: products

end
