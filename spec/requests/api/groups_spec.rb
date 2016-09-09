describe "groups requests" do
	it "GET index" do
		get "/api/groups"
		expect(response.status).to eq(200)
	end

	it "POST create" do
		group = FactoryGirl.build(:group)
		post "/api/groups", group.to_json, {'ACCEPT' => "application/json", 'CONTENT_TYPE' => 'application/json'}
		expect(response.status).to eq(201)
	end
end