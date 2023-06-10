require 'active_record'

class CreateOrderTable < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.integer :total_amount
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end

