class Api::TripsController < ApplicationController
	respond_to :json

	def index
		respond_with Trip.where(driver_id: params[:user_id])
	end

	def show
		respond_with Trip.includes(:users).find(params[:id]).to_json(include: :users)
	end

	def create
	    trip = Trip.new(trip_params)
	    if trip.save
	      render json: trip, status: 201
	    else
	      render json: { errors: trip.errors }, status: 422
	    end
	end

	def destroy
		trip = Trip.where("id = ? And driver_id = ?", params[:id], params[:user_id]).take
		trip.destroy
		render json: { message: "Deleted successfully" }, status: 201
	end

	def join
		trip = Trip.find(params[:id]);
		trip.seats = trip.seats.to_i - 1
		if (trip.users += [User.find(params[:user_id])]) && trip.save

			render json: { message: "Joined successfully" }, status: 201
		else
			render json: { errors: trip.errors }, status: 422
		end
	end

	def leave
		trip = Trip.find(params[:id]);
		trip.seats = trip.seats.to_i + 1
		if (trip.users -= [User.find(params[:user_id])]) && trip.save
			render json: { message: "leaved successfully" }, status: 201
		else
			render json: { errors: trip.errors }, status: 422
		end	
	end

  private

    def trip_params
      params.permit(:driver_id, :source_id, :destination_id, :departure_time, :seats)
    end
end
