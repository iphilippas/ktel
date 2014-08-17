class RouteType < ActiveRecord::Base
	has_many :routes

	validates :description, presence: true
end
