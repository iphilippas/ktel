class Route < ActiveRecord::Base
  belongs_to :destination
  belongs_to :route_type
  has_many :assignments
  has_many :buses, through: :assignments

  validates :destination_id, :route_type_id, :code_name, :time, :night, presence: true
  validates_numericality_of :night
  validates_time :time

  def human_express
    express ? 'Ναί' : 'Όχι'
	end
end
