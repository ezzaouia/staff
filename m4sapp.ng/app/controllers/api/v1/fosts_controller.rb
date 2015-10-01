class API::V1::FostsController < ApplicationController
	# before_filter :authenticate_user!, only: [:upvote, :dowvote]

	def render_json thing
		render json: thing
	end

	def index
		@api_v1_fosts = Fost.all

		render_json @api_v1_fosts
	end

	def show
		@api_v1_fost = Fost.find(params[:id])
		
		render_json @api_v1_fost
	end

	def new
		@api_v1_fost = Fost.getnew

		render_json @api_v1_fost
	end

	def create
		byebug
		@api_v1_fost = Fost.create(fost_params)

		render_json @api_v1_fost
	end

	def update
		@api_v1_fost = Fost.find(params[:id])

		if @api_v1_fost.update(fost_params)
      head :no_content
    else
      render json: @api_v1_fos.errors, status: :unprocessable_entity
    end
	end

	def destroy
		@api_v1_fost = Fost.find(params[:id])

		@api_v1_fost.destroy
		head :no_content 
	end

	def upvote
		@api_v1_fost = Fost.find(params[:id])
		@api_v1_fost.upvote_by current_user
		render json: { count: @api_v1_fost.get_upvotes.size }
	end

	def downvote
		@api_v1_fost = Fost.find(params[:id])
		@api_v1_fost.downvote_from current_user
		render json: { count: @api_v1_fost.get_downvotes.size }
	end

	def get_upvotes
		@api_v1_fost = Fost.find(params[:id])
		
		render json: { count: @api_v1_fost.get_upvotes.size }
	end

	def get_downvotes
		@api_v1_fost = Fost.find(params[:id])
		
		render json: { count: @api_v1_fost.get_downvotes.size }
	end

	private
		def fost_params
			params.require(:fost).permit(:name, :image, :city, :shdes, :category, :plong, :plalt, :region, :description)
		end
end
