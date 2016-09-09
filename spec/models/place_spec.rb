require 'rails_helper'

RSpec.describe Place, :type => :model do

	describe "validations" do
		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:longitude) }
		it { should validate_presence_of(:latitude) }
		it { should validate_uniqueness_of(:name) }
		it { should validate_numericality_of(:longitude) }
		it { should validate_numericality_of(:latitude) }
	end
end