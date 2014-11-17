class User < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :email, presence: true
	validates :password, length: {minimum: 6}

	has_many :cards
end
