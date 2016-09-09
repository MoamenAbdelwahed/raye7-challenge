class Api::UsersController < ApplicationController
	respond_to :json

	def create
	    user = User.new(user_params)
	    if user.save
	      render json: user, status: 201
	    else
	      render json: { errors: user.errors }, status: 422
	    end
	end

  private

    def user_params
      params.permit(:first_name, :last_name, :phone_number, :group_id, :home_place_id, :work_place_id)
    end
end
