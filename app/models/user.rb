class User < ActiveRecord::Base
	validates :first_name, presence: true, length: {minimum: 3}
	validates :last_name, presence: true, length: {minimum: 3}
	validates :phone_number, length: { is: 11 }, numericality: { only_integer: true }, uniqueness: true, presence: true

	belongs_to :group
	belongs_to :home_place, :class_name => "Place"
	belongs_to :work_place, :class_name => "Place"
	has_and_belongs_to_many :trips
end
