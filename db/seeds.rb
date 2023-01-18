require 'faker'
Customer.destroy_all
Meal.destroy_all
Order.destroy_all
Restaurant.destroy_all
RestaurantMeal.destroy_all

puts '...Seeding data'

Customer.create!( first_name: "Cynthia", last_name: "Chelah", username: "chelah", email: "chelah@gmail.com", password:"hello", password_confirmation: "hello" )
puts "Created #{Customer.count} customers"

Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/566566/pexels-photo-566566.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
Meal.create!(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Commerce.price, category: Faker::Food.dish, img_url: "https://images.pexels.com/photos/416471/pexels-photo-416471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
puts "Created #{Meal.count} meals"

6.times do |i|
  Restaurant.create!(
      name: Faker::Restaurant.name,
      review: Faker::Restaurant.review
  )
puts "Created #{Restaurant.count} restaurants"
end

Order.create!( first_name: "Cynthia", last_name: "Chelah", phone_number: 0706123456, region: "Upperhill", city: "Nairobi", delivery_address: "Britam", restaurant_id: 1, customer_id: 1)
puts "Created #{Order.count} orders"

RestaurantMeal.create(meal_id: 1, restaurant_id: 1)
RestaurantMeal.create(meal_id: 2, restaurant_id: 2)
RestaurantMeal.create(meal_id: 3, restaurant_id: 3)
RestaurantMeal.create(meal_id: 4, restaurant_id: 4)
RestaurantMeal.create(meal_id: 5, restaurant_id: 5)
RestaurantMeal.create(meal_id: 6, restaurant_id: 6)
RestaurantMeal.create(meal_id: 7, restaurant_id: 1)
RestaurantMeal.create(meal_id: 8, restaurant_id: 2)
RestaurantMeal.create(meal_id: 9, restaurant_id: 3)
RestaurantMeal.create(meal_id: 10, restaurant_id: 4)

puts '...Done seeding!'