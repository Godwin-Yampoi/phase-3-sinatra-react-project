class Order < ActiveRecord::Base
    # Add any associations, validations, or custom methods here
    has_and_belongs_to_many :dishes
    
    # Validations
    validates :customer_name, presence: true
    validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  
    # Custom methods
    def total_price
      dish.price.to_f * quantity.to_i
    end
  
    def display_order
      "#{customer_name} ordered #{quantity} #{dish.name.pluralize(quantity)} for a total of $#{total_price}"
    end
  end