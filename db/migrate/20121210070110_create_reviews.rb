class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :restaurant_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
