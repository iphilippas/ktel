class Destination < ActiveRecord::Base
	validates :city, presence: true
	validates :km_real, :km_plasma, numericality: true
end
