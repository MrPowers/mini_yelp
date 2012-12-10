class RestaurantsController < ApplicationController
	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create(params[:restaurant])
		@restaurant.user_id = current_user.id
		if @restaurant.save
			redirect_to restaurants_path
		else
			render 'new'
		end
	end

	def index
		@restaurants = Restaurant.all
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		@restaurant.update_attributes(params[:restaurant])
		if @restaurant.save
			redirect_to restaurants_path
		else
			render 'edit'
		end
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to restaurants_path
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@review = Review.new
	end
end
