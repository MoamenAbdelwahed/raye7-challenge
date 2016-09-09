class Api::GroupsController < ApplicationController
	respond_to :json
	def index
		respond_with Group.all
	end

	def create
	    group = Group.new(group_params)
	    if group.save
	      render json: group, status: 201
	    else
	      render json: { errors: group.errors }, status: 422
	    end
	end

  private

    def group_params
      params.permit(:name)
    end
end
