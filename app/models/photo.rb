class Photo < ActiveRecord::Base
  attr_accessible :image, :restaurant_id, :image
  belongs_to :restaurant
  mount_uploader :image, ImageUploader

  validates :image, :presence => true  
end
