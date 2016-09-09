class Trip < ActiveRecord::Base
	validates :departure_time, presence: true
	validates :seats, numericality: { only_integer: true }, presence: true

	belongs_to :driver, :class_name => "User"
	belongs_to :source, :class_name => "Place"
	belongs_to :destination, :class_name => "Place"
	has_and_belongs_to_many :users
end
