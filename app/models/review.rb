class Review < ActiveRecord::Base
  attr_accessible :body, :rating, :restaurant_id, :user_id
  belongs_to :user
  belongs_to :restaurant
end
