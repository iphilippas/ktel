class Destination < ActiveRecord::Base
	has_many :routes

	validates :city, presence: true
	validates :km_real, :km_plasma, numericality: true

	self.per_page = 15
end
