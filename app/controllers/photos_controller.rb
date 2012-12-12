class PhotosController < ApplicationController
	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@photo = @restaurant.photos.create(params[:photo])
		if @photo.save
			redirect_to @restaurant
		else
			flash[:error] = "Please attach an image"
			redirect_to @restaurant
		end
	end
end
