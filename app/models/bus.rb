class Bus < ActiveRecord::Base
	validates :number, presence: true

	has_many :assignments
  has_many :routes, through: :assignments

	self.per_page = 15
end
