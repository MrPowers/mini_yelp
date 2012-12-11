class RestaurantsController < ApplicationController
	load_and_authorize_resource

	def new
	end

	def create
		@restaurant.user_id = current_user.id
		if @restaurant.save
			redirect_to restaurants_path
		else
			render 'new'
		end
	end

	def index
		respond_to do |format|
      format.html
      format.json { render json: @posts }
    end
	end

	def edit
	end

	def update
		if @restaurant.save
			redirect_to restaurants_path
		else
			render 'edit'
		end
	end

	def destroy
		@restaurant.destroy
		redirect_to restaurants_path
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@review = Review.new
	end
end
