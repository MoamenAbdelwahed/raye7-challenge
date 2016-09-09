require 'rails_helper'

RSpec.describe User, :type => :model do
	
	describe "validations" do
		it { should validate_presence_of(:first_name) }
		it { should validate_presence_of(:last_name) }
		it { should validate_presence_of(:phone_number) }
		it { should validate_uniqueness_of(:phone_number) }
		it { should validate_length_of(:phone_number).is_equal_to(11) }
		it { should validate_numericality_of(:phone_number) }
	end

	describe "Relations" do
		it { should belong_to(:group) }
		it { should belong_to(:home_place) }
		it { should belong_to(:work_place) }
		it { should have_and_belong_to_many(:trips) }
	end
end