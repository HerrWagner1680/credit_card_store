class User < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :email, presence: true
	validates :password, length: {minimum: 6}

	has_many :cards

	has_attached_file :avatar, :styles => {
	:medium => "300x300>",
	:small => "200x200#",
	:thumb => "150x150",
	:default_url => "/images/:style/missing.png"
}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
