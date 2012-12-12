module RestaurantsHelper
	def button_helper(restaurant)
		restaurant.new_record? ? "Submit" : "Update Restaurant"
	end

	def reviewed?(restaurant)
		restaurant.reviews.any?{|review| review.user == current_user}
	end

	def average_review(restaurant)
		sum = 0
		restaurant.reviews.each {|review| sum += review.rating}
		(sum.to_f / restaurant.reviews.length).round(1)
	end
end