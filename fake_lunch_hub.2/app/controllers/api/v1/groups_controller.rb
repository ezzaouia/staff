class API::V1::GroupsController < ApplicationController

	# GET /groups
	# GET /groups.json
	def index
	  @groups = API::V1::Group.all
	  render json: @groups
	end

	def new
	end

	def create
	  @group = API::V1::Group.create(group_params)
	  render json: @group
	end

	private
		def group_params
			params.require(:group).permit(:name)
		end
end
