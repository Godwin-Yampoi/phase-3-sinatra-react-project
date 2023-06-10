class CreateJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes_orders, id: false do |t|
      t.belongs_to :dish
      t.belongs_to :order
  end
end
end