class Card < ActiveRecord::Base
	validates :card_number, uniqueness: true
	validates :card_number, length: {minimum: 8, maximum: 20}

	belongs_to :user
	has_many :orders

	has_attached_file :avatar, :styles => {
	:medium => "300x300>",
	:small => "200x200#",
	:thumb => "150x150",
	:default_url => "/images/:style/missing.png"
}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
