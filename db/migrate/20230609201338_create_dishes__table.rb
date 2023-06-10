require 'active_record'

class CreateDishesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
