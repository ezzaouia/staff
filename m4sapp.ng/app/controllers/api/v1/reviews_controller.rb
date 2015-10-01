class API::V1::ReviewsController < ApplicationController

	before_filter :authenticate_user!, except: [:index]
	before_action :set_fost

	def render_json thing
		render json: thing
	end

	def index
    @api_v1_fost_reviews = @fost.reviews

    render json: @api_v1_fost_reviews
	end

	def new
		@api_v1_review = @fost.reviews.build

		render_json @api_v1_review
	end

	def create
		# byebug
		@api_v1_review = @fost.reviews.build(review_params)
		@api_v1_review.user = current_user
		if @api_v1_review.save
			render_json @api_v1_review
		else
		end
	end

	private
		def set_fost
			@fost ||= Fost.find(params[:fost_id])
		end

		def review
			@review ||= Review.find(params[:id])
		end

		def review_params
			params.require(:review).permit(:author, :body, :stars, :fost_id)
		end

end
