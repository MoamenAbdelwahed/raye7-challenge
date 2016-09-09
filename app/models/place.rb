class Place < ActiveRecord::Base
	validates :name, uniqueness: true, presence: true
	validates :longitude, numericality: true, presence: true
	validates :latitude, numericality: true, presence: true
end
