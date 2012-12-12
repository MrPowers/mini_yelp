class Restaurant < ActiveRecord::Base
  attr_accessible :city, :name, :state, :street, :user_id
  belongs_to :user
  has_many :reviews
  has_many :photos

  validates :city, :name, :state, :street, :presence => true 
end
