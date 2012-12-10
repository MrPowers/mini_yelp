class ReviewsController < ApplicationController
	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = @restaurant.reviews.create(params[:review])
		@review.user_id = current_user.id
		@review.save
		redirect_to @restaurant
	end
end
