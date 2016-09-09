class Api::PlacesController < ApplicationController
	respond_to :json
	def index
		respond_with Place.all
	end

	def create
	    place = Place.new(place_params)
	    if place.save
	      render json: place, status: 201
	    else
	      render json: { errors: place.errors }, status: 422
	    end
	end

  private

    def place_params
      params.permit(:name, :longitude, :latitude)
    end
end
