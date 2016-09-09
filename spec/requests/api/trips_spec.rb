describe "trips requests" do
	trip = FactoryGirl.create(:trip)
	
	it "GET index" do
		get "/api/trips"
		expect(response.status).to eq(200)
	end

	it "POST create" do
		post "/api/trips", trip.to_json, {'ACCEPT' => "application/json", 'CONTENT_TYPE' => 'application/json'}
		expect(response.status).to eq(201)
		
		
	end
		it "POST join and leave" do	
			user = FactoryGirl.create(:user)	

			params = { :format => "json", :user_id => user.id }
			post "/api/trips/#{trip.id}/join", params.to_json, {'ACCEPT' => "application/json", 'CONTENT_TYPE' => 'application/json'}
			json = JSON.parse(response.body)
			expect(json["message"]).to eq("Joined successfully")

			post "/api/trips/#{trip.id}/leave", params.to_json, {'ACCEPT' => "application/json", 'CONTENT_TYPE' => 'application/json'}
			json = JSON.parse(response.body)
			expect(json["message"]).to eq("leaved successfully")
		end

		it "GET show" do
			get "/api/trips/#{trip.id}"
			expect(response.status).to eq(200)
		end

		it "DELETE destroy" do
			params =  { :format => "json", :user_id => 3 }
			delete "/api/trips/#{trip.id}", params.to_json, {'ACCEPT' => "application/json", 'CONTENT_TYPE' => 'application/json'}
			json = JSON.parse(response.body)
			expect(json['message']).to eq("Deleted successfully")
		end
end