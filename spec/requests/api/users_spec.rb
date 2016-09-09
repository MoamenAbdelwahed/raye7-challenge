describe "users requests" do
	it "POST create" do
		user = FactoryGirl.build(:user)
		post "/api/users", user.to_json, {'ACCEPT' => "application/json", 'CONTENT_TYPE' => 'application/json'}
		expect(response.status).to eq(201)
	end
end