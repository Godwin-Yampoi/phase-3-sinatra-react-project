class AddNameToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column:restaurants,:name,:string
  end
end
