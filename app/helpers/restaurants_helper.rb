module RestaurantsHelper
	def button_helper(restaurant)
		restaurant.new_record? ? "Submit" : "Update Restaurant"
	end

	def reviewed?(restaurant)
		restaurant.reviews.any?{|review| review.user == current_user}
	end
end