class CreateRestaurantTable < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name 
      t.string :location
      t.string :image
      # Add more columns as needed
      t.timestamps
    end
  end
end
