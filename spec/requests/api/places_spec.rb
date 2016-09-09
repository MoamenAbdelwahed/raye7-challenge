describe "places requests" do
	it "GET index" do
		get "/api/places"
		expect(response.status).to eq(200)
	end

	it "POST create" do
		place = FactoryGirl.build(:place)
		post "/api/places", place.to_json, {'format' => "json", 'ACCEPT' => "application/json", 'CONTENT_TYPE' => 'application/json'}
		expect(response.status).to eq(201)
	end
end