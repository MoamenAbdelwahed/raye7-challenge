require 'rails_helper'

RSpec.describe Trip, :type => :model do
	
	describe "validations" do
		it { should validate_presence_of(:departure_time) }
		it { should validate_presence_of(:seats) }
		it { should validate_numericality_of(:seats).only_integer }
	end

	describe "Relations" do
		it { should belong_to(:driver) }
		it { should belong_to(:source) }
		it { should belong_to(:destination) }
		it { should have_and_belong_to_many(:users) }
	end
end