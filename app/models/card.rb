class Card < ActiveRecord::Base
	validates :card_number, uniqueness: true
	validates :card_number, length: {minimum: 8, maximum: 20}

	belongs_to :user
	has_many :orders
end
