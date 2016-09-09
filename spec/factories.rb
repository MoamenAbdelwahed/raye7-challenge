FactoryGirl.define do
	
	factory :user do
		first_name "John"
		last_name "Doe"
		phone_number "01001010114"
		group_id 1
		home_place_id 1
		work_place_id 2
	end

	factory :group do
		name "Axis2"
	end

	factory :place do
		name "Helwan"
		longitude "12.325"
		latitude "457.22555"
	end

	factory :trip do
		driver_id 3
		source_id 1
		destination_id 2
		departure_time "20-08-2016 10:00"
		seats 3
	end
end