class ReviewsController < ApplicationController
	load_and_authorize_resource :restaurant
  load_and_authorize_resource :review, :through => :restaurant

	def create
		@review = @restaurant.reviews.create(params[:review])
		@review.user_id = current_user.id
		if @review.save
			redirect_to @restaurant
		else
			render "reviews/form"
		end
	end

	def edit
	end

	def update
		@review.update_attributes(params[:review])
		@review.user_id = current_user.id
		redirect_to @restaurant
	end

	def destroy
		@review.destroy
		redirect_to @restaurant		
	end
end
