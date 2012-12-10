module RestaurantsHelper
	def button_helper(restaurant)
		restaurant.new_record? ? "Submit" : "Update Restaurant"
	end
end
