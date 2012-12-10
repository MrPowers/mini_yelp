class Restaurant < ActiveRecord::Base
  attr_accessible :city, :name, :state, :street, :user_id
end
