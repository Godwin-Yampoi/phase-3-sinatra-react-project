require 'faker'

puts "🌱 Seeding spices..."

20.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    location: Faker::Address.city,
    image: Faker::LoremFlickr.image(size: "300x200", search_terms: ["restaurant",Faker::Restaurant.type])
  )
  
  5.times do
    restaurant.dishes.create(
      name: Faker::Food.dish,
      image: Faker::LoremFlickr.image(size: "300x200", search_terms: ["food",Faker::Food.ingredient]),
      price: Faker::Commerce.price(range: 0..50),
      description: Faker::Lorem.sentence
    )
  end
end

20.times do
  order = Order.create(
    customer_name: Faker::Name.name,
    total_amount: Faker::Number.decimal(l_digits: 2),
    quantity: Faker::Number.between(from: 1, to: 10)
  )

  # Add random dishes to the order
  rand(1..5).times do
    order.dishes << Dish.all.sample
  end
end

puts "✅ Done seeding!"